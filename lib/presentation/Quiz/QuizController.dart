import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Model/MCQModel.dart';
import '../../coreComponents/components/DummyData.dart';
import '../../utils/appUtils.dart';

class QuizController extends GetxController with GetTickerProviderStateMixin {

  // animation objects......
  AnimationController? _animationController;
  final Rx<Animation?> _animation = Rx<Animation?>(null);

  // so that we can access our animation outside
  Animation? get animation => _animation.value;
  Timer? _mainTimer;



  //quiz objects.......
  final RxList<McqModel> _quiz = RxList<McqModel>([]);
  List<McqModel> get quiz => _quiz;

  final RxInt _activeQsnIndex = RxInt(0);
  int get activeQsnIndex => _activeQsnIndex.value;

  bool get isLastQsn => activeQsnIndex == quiz.length - 1;

  //result count object....
  final RxInt _correctCount = RxInt(0);
  int get correctCount => _correctCount.value;

  final RxInt _selectedCat = RxInt(0);
  int get selectCat => _selectedCat.value;

  void onSelectCatAction(int id)=> _selectedCat.value = id;



  //on enter quiz view.....
  getQuestion() {
    _clearQuiz();

    final quizIndex = catModelList.indexWhere((e) => e.id == selectCat);

    final catList = getRandomSublist(catModelList[quizIndex].quizList!, 10);

    List<McqModel> list =
        List<McqModel>.from(catList.map((element) => McqModel.fromJson(element.toJson())));
    _quiz.assignAll(list);
    _startAnimate();
  }

  _startAnimate() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    final durationValue = 60 - quiz[activeQsnIndex].timeConsumed;
    final beginValue =
        quiz[activeQsnIndex].timeConsumed != 0 ? 1 - (durationValue / 60) : 0.0;

    _animationController = AnimationController(
        duration: Duration(seconds: durationValue), vsync: this);
    _animation.value =
        Tween<double>(begin: beginValue, end: 1).animate(_animationController!)
          ..addListener(() {
            _animation.refresh();
          });

    _mainTimer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      final value = quiz[activeQsnIndex].timeConsumed + 1;

      if (value == 60) {
        _quiz[activeQsnIndex].isClosed = true;
      }
      _quiz[activeQsnIndex].timeConsumed = value;

      _quiz.refresh();
    });

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController!.forward().whenComplete(onSkip);
  }

  // on skip button click navigate to next question....
  void onSkip() {
    _animationController!.reset();
    _mainTimer!.cancel();
    if (!isLastQsn) {
      _activeQsnIndex.value = activeQsnIndex + 1;
      _startAnimate();
    }
  }

  // on back press navigate to previous question....
  void onBackPress() {
    if (activeQsnIndex > 0) {
      _mainTimer!.cancel();
      _animationController!.reset();
      final index = _findPreviousIncompleteIndex(activeQsnIndex);
      if(index != null){
        _activeQsnIndex.value = index;
      }else{
        _activeQsnIndex.value = activeQsnIndex - 1;
      }
      _startAnimate();
    }
  }

  // on back press find previous question index where question time is not complete....
  int? _findPreviousIncompleteIndex(int activeIndex) {
    int? value;
    for (int i = activeIndex - 1; i >= 0; i--) {
      if (!quiz[i].isClosed) {
        value = i;
        break;
      }
    }
    return value;
  }

  //on attempt question, save user option selected and navigate to next question...
  void onSelectOption(int optionIndex) {
    _quiz[activeQsnIndex].selectedValue = optionIndex;
    _quiz.refresh();
    Future.delayed(const Duration(milliseconds: 700), () {
      //on attempt action, we will move further to next question...
      onSkip();
    });
  }

  // on generateReport calculate accurate questions count....
  void generateReport() {
    int count = 0;
    for (var item in quiz) {
      final answer = item.answer;
      if (item.selectedValue != null &&
          item.options![item.selectedValue!].value == item.answer) {
        count++;
      }
    }
    _correctCount.value = count;
  }


  _clearQuiz(){
    _activeQsnIndex.value = 0;
    _mainTimer?.cancel();
    _quiz.clear();
    _correctCount.value = 0;
  }
}
