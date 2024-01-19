import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TapWidget.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppColors.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';

class AppButton extends StatelessWidget {
  final String? label;
  final TextStyle? labelStyle;
  final Function()? onTap;
  final double? radius;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const AppButton({super.key, this.label, this.onTap, this.radius, this.labelStyle, this.buttonColor, this.buttonBorderColor, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: padding ?? EdgeInsets.symmetric(horizontal: AppFonts.s20, vertical: AppFonts.s20),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: buttonColor ?? AppColors.primaryGreen,
            borderRadius: BorderRadius.circular(radius ??AppFonts.s10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextView(text: label ?? '',textStyle: TextStyles.medium14White,),
            ],
          ),
        ),
        Positioned.fill(child: TapWidget(onTap: onTap,))
      ],
    );
  }
}
