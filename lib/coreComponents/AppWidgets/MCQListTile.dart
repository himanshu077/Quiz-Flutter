import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/AppRadio.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TapWidget.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppColors.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';
import 'package:quiz_flutter_app/presentation/Quiz/ResultView.dart';
import 'package:quiz_flutter_app/utils/AppExtenstions.dart';

import '../../Model/MCQOptionItemModel.dart';



class MCQListTile extends StatelessWidget {
  final McqOptionItemModel data;
  final bool isSelected;
  final int qsnNo;
  final Function() onTap;
  const MCQListTile({super.key, required this.data, required this.qsnNo, required this.onTap, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final color = data.status == McqItemStatusEmun.right ?
        AppColors.primaryGreen : data.status == McqItemStatusEmun.wrong ? AppColors.primaryGreen : AppColors.greyMidText;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: AppFonts.s20,
            horizontal: AppFonts.s16,
          ),
          decoration: BoxDecoration(
            color: color == AppColors.greyMidText ? AppColors.transparent : color.withOpacity(0.5),
            borderRadius: BorderRadius.circular(AppFonts.s10),
            border: Border.all(
              color: color
            )
          ),
          child: Row(
            children: [
              Expanded(child: TextView(
                text: '$qsnNo. ${data.value ?? ''}',
                textStyle: data.status == McqItemStatusEmun.right ?
                TextStyles.regular16GreyMidText : data.status == McqItemStatusEmun.wrong ? TextStyles.regular16GreyMidText : TextStyles.regular16GreyMidText
                ,
              )),
              AppRadio(status: isSelected, onChange: (value){
              })
            ],
          ),
        ),
        Positioned.fill(child: TapWidget(onTap: onTap,))
      ],
    );
  }
}
