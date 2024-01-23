import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/AppBar2.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/AppBgScaffold.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/ResultListTile.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';
import 'package:quiz_flutter_app/presentation/Quiz/QuizController.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  final quizCtrl = Get.put(QuizController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quizCtrl.generateReport();
  }

  @override
  Widget build(BuildContext context) {
    return AppBgScaffold(
        child: Column(
      children: [
        AppBar2(),
        Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppFonts.s20),
          child: Column(
            children: [
              Obx(
                () => CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: AppFonts.s10,
                  percent: quizCtrl.correctCount / quizCtrl.quiz.length,
                  center: TextView(
                    text: '${quizCtrl.correctCount}/${quizCtrl.quiz.length}',
                    textStyle: TextStyles.regular14PWhite,
                  ),
                  progressColor: Colors.green,
                ),
              ),
              TextView(
                text: 'Your Report',
                textStyle: TextStyles.semiBold22P_Green,
                margin: EdgeInsets.only(top: AppFonts.s16),
              ),
              Obx(
                () => ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: AppFonts.s20),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        ResultListTile(data: quizCtrl.quiz[index]),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 20,
                        ),
                    itemCount: quizCtrl.quiz.length),
              )
            ],
          ),
        ))
      ],
    ));
  }
}
