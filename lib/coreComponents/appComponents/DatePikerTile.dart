import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/AppFonts.dart';
import '../components/AppStrings.dart';
import '../components/TextStyles.dart';
import 'TextView.dart';

class DatePikerTile extends StatelessWidget {
  final String? type;
  final String? label;
  final String? hint;
  final TextEditingController controller;
  final TextInputType? inputType;
  final bool hasLabelStar;
  final bool readOnly;
  final bool hasViewHeight;
  final bool hasLabelOptional;
  final Widget? rightIcon;
  final Widget? leftIcon;
  final double? borderRadius;
  final int? noOfLines;
  final Color? hintTextColor;
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final String? error;


  final EdgeInsets? contentPadding;

  const DatePikerTile(
      {super.key,
         this.label,
        required this.type,
        required this.controller,
        this.inputType,  this.hasLabelStar = false,  this.hasViewHeight = true, this.rightIcon,  this.readOnly = false,  this.hasLabelOptional = false, this.borderRadius, this.noOfLines = 1, this.hint, this.contentPadding, this.hintTextColor, this.leftIcon, this.borderColor, this.inputFormatters, this.error});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label != null,
          child: Row(
            children: [
              TextView(
                text: label ?? '',
                textStyle: TextStyles.regular14Black,
                margin: EdgeInsets.only(bottom: AppFonts.s7),
              ),
              Visibility(
                visible: hasLabelStar,
                  child: TextView(text: '*',textStyle: TextStyles.regular14Red,margin: EdgeInsets.only(bottom: 10, left: 2),)),

              Visibility(
                  visible: hasLabelOptional,
                  child: TextView(text: ' (${AppStrings.optional})',textStyle: TextStyles.regular14GreyMidText,margin: EdgeInsets.only(bottom: 10, left: 2),)),
            ],
          ),
        )
        ,
        // CustomTextField(
        //   controller: controller,
        //   textInputAction: TextInputAction.next,
        //   keyboardType: inputType ?? TextInputType.text,
        //   paddingHorizontal: 20.0,
        //   numberOfLines: noOfLines,
        //   hasViewHight: hasViewHeight,
        //   preffixicon: leftIcon,
        //   suffixicon: rightIcon,
        //   readOnly: readOnly,
        //   borderRadius: borderRadius,
        //   hintText: hint,
        //   hintTextColor: hintTextColor,
        //   contentPadding: contentPadding,
        //   borderColor: borderColor,
        //   inputFormatters: inputFormatters,
        //   error: error,
        //   onTab: () async {
        //     if(type == "time_mints"){
        //
        //     }else if(type == "time"){
        //       final TimeOfDay? picked = await appTimePicker(context);
        //       controller.text = "${picked?.hour} : ${picked?.minute}" ;
        //     }else{
        //       final DateTime? picked = await appDatePicker(context);
        //       controller.text = DateTimeUtils.dateTimeToPattern(picked! ,DateTimeUtils.patternDate_MMM_d_coma_yyyy) ;
        //     }
        //
        //   },
        // ),
      ],
    );
  }
}