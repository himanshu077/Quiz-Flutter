import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/Model/QuizCatModel.dart';

import '../appComponents/ImageView.dart';
import '../appComponents/TapWidget.dart';
import '../appComponents/TextView.dart';
import '../components/AppColors.dart';
import '../components/AppFonts.dart';
import '../components/TextStyles.dart';

class CategoryCardTile extends StatelessWidget {
  final QuizCatModel data;
  final Function() onTap;
  const CategoryCardTile({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppFonts.s10),
            color: AppColors.greenLightBg.withOpacity(0.2),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageView(url: '${data.icon}', size: 60,),
              TextView(text: '${data.name}',
                textStyle: TextStyles.medium16White,
                margin: EdgeInsets.only(top: AppFonts.s10),
              ),
            ],
          ),
        ),
        Positioned.fill(child: TapWidget(
          onTap: onTap,
        ))
      ],
    );
  }
}
