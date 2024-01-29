import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppColors.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';

import '../../presentation/Quiz/QuizController.dart';
import '../appComponents/SvgImage.dart';
import '../components/AppIcons.dart';
class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyMidText, width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuizController>(
        builder: (controller) {
          return Stack(
            children: [
              // LayoutBuilder provide us the available space for the conatiner
              // constraints.maxWidth needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Obx(
            ()=> Container(
                    // from 0 to 1 it takes 60s
                    width: controller.animation!= null ? constraints.maxWidth * controller.animation!.value : 0,
                    // constraints.maxWidth * controller.animation!.value,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            AppColors.gradientDarkGreen,
                            AppColors.gradientLightGreen,
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppFonts.s10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(()=> TextView(text: "${(controller.animation != null ? (controller.animation!.value * 60) : 60).round()} sec",textStyle: TextStyles.regular12White,)),
                      SvgImage(
                        url: AppIcons.clock,
                        size: 20,
                        tintColor: AppColors.white.withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}