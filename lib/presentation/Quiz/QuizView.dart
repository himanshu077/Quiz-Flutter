import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/AppBar2.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/AppBgScaffold.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/MCQListTile.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppColors.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';
import 'package:quiz_flutter_app/presentation/Quiz/QuizController.dart';
import 'package:quiz_flutter_app/utils/AppExtenstions.dart';

import '../../coreComponents/AppWidgets/PreogressBar.dart';
import 'ResultView.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final quizCtrl = Get.put(QuizController());

  void navResultScreen() {
    context.pushAndClearNavigator(const ResultView());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quizCtrl.getQuestion();
  }
  @override
  Widget build(BuildContext context) {
    return AppBgScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //appBar and click actions.......
        Obx(
          () => AppBar2(
            onLeadTap: quizCtrl.onBackPress,
            isLeadVisible: quizCtrl.activeQsnIndex != 0,
            tail: TextView(
              onTap: quizCtrl.isLastQsn ? navResultScreen : quizCtrl.onSkip,
              text: 'Skip',
              textStyle: TextStyles.regular14PWhite,
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppFonts.s16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProgressBar(),

                // active question and total number of questions........
                GetX<QuizController>(builder: (controller) {
                  return TextView(
                    text:
                        'Question   ${controller.activeQsnIndex + 1}/${controller.quiz.length}',
                    textStyle: TextStyles.medium24BorderGrey,
                    margin: EdgeInsets.only(top: AppFonts.s30),
                  );
                }),
                Divider(
                  color: AppColors.greyRegularText,
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: AppFonts.s16),
                    padding: EdgeInsets.all(AppFonts.s10),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(AppFonts.s10)),
                    child: GetBuilder<QuizController>(builder: (controller) {
                      return Column(
                        children: [
                          //Question........
                          Obx(
                            () => TextView(
                              text: '${controller.quiz[0].question}',
                              textStyle: TextStyles.medium20Black,
                              margin:
                                  EdgeInsets.symmetric(vertical: AppFonts.s12),
                            ),
                          ),

                          //Options list........
                          Obx(
                            () => ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.symmetric(
                                    vertical: AppFonts.s20),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => MCQListTile(
                                    onTap: () {
                                      controller.onSelectOption(index);
                                      if (quizCtrl.isLastQsn) {
                                        navResultScreen();
                                      }
                                    },
                                    isSelected: controller
                                            .quiz[controller.activeQsnIndex]
                                            .selectedValue ==
                                        index,
                                    data: controller
                                        .quiz[controller.activeQsnIndex]
                                        .options![index],
                                    qsnNo: index + 1),
                                separatorBuilder: (context, index) => SizedBox(
                                      height: AppFonts.s30,
                                    ),
                                itemCount: controller
                                        .quiz[controller.activeQsnIndex]
                                        .options
                                        ?.length ??
                                    0),
                          )
                        ],
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: AppFonts.s30,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
