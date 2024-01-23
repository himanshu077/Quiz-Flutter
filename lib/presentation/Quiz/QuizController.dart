import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter_app/Model/MCQOptionItemModel.dart';
import 'package:quiz_flutter_app/coreComponents/components/DummyData.dart';

import '../../Model/MCQModel.dart';
final obj = McqModel(
    question: 'When the measured length is less than the actual length, the error is known as ?',
    answer: 'negative error',
    options: [
      McqOptionItemModel(
          status: McqItemStatusEmun.unAttempt,
          value: 'positive error'
      ),
      McqOptionItemModel(
          status: McqItemStatusEmun.unAttempt,
          value: 'negative error'
      ),McqOptionItemModel(
          status: McqItemStatusEmun.unAttempt,
          value: 'compensating error'
      ),McqOptionItemModel(
          status: McqItemStatusEmun.unAttempt,
          value: 'instrumental error'
      ),
    ],
);

class QuizController extends GetxController with GetTickerProviderStateMixin{

  AnimationController? _animationController;
  Animation? _animation;
  // so that we can access our animation outside
  Animation? get animation => _animation;

  final RxList<McqModel> _quiz = RxList<McqModel>([]);

  final RxInt _activeQsnIndex = RxInt(0);
  int get activeQsnIndex => _activeQsnIndex.value;
  bool get isLastQsn => activeQsnIndex == quiz.length -1;

  List<McqModel> get quiz => _quiz;
  final RxInt _correctCount = RxInt(0);
  int get correctCount => _correctCount.value;


  // @override
  // void onInit() {
  //
  //
  //   super.onInit();
  // }

  getQuestion(){
    List<McqModel> list  = List<McqModel>.from(quizJSON.map((json) => McqModel.fromJson(json)));
    _quiz.assignAll(list);
    startAnimate();
  }

  startAnimate(){

    print(obj.toJson());
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController!.forward().whenComplete(onSkip);
  }






  // on skip button click navigate to next question....
  void onSkip(){
    _animationController!.reset();
    if(!isLastQsn){
      startAnimate();
      _activeQsnIndex.value = activeQsnIndex + 1;
    }
  }


  // resetAnimation(){
  //   // Reset the counter
  //   _animationController!.reset();
  //
  //   // Then start it again
  //   // Once timer is finish go to the next qn
  //   _animationController!.forward().whenComplete(onSkip);
  //
  // }


  // on back press navigate to previous question....
  void onBackPress(){
    if(activeQsnIndex > 0){
      _activeQsnIndex.value = activeQsnIndex - 1;
    }
  }

  //on attempt question, save user option selected and navigate to next question...
  void onSelectOption(int optionIndex){
    _quiz[activeQsnIndex].selectedValue = optionIndex;
    _quiz.refresh();
    Future.delayed(const Duration(milliseconds: 700),(){

      onSkip();
    });
  }

  void generateReport(){
    int count = 0;
    for(var item in quiz){
      final answer = item.answer;
      if(item.selectedValue != null && item.options![item.selectedValue!].value == item.answer){
        count ++;
      }
    }
    _correctCount.value = count;
  }
}