import 'package:flutter/material.dart';

import '../components/AppColors.dart';
import '../components/AppFonts.dart';
import '../components/TextStyles.dart';
import 'TapWidget.dart';
import 'TextView.dart';

class AppChip extends StatelessWidget {
  final String? value;
  final bool state;
  final Function()? onTap;
  const AppChip({super.key, required this.value,  this.state = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            padding: EdgeInsets.all(AppFonts.s7),
            decoration: BoxDecoration(
                border: Border.all(color: state ? AppColors.primaryGreen : AppColors.greyLightBorder),
                borderRadius: BorderRadius.circular(AppFonts.s20)
            ),
            child: TextView(text: value ?? '',
              textStyle: state?
              TextStyles.medium14P_Green :
              TextStyles.regular14GreySemiDarkGreyText,
            ),
          ),
          Positioned.fill(child: TapWidget(onTap: onTap,))
        ],
      );
  }
}