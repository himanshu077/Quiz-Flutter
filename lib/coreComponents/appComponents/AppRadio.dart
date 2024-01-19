import 'package:flutter/material.dart';

import '../components/AppColors.dart';
import '../components/AppFonts.dart';

class AppRadio extends StatelessWidget {
  final bool status;
  final Function(bool) onChange;
  const AppRadio({super.key, required this.status, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: AppFonts.s20,
      width: AppFonts.s20,
      child: Radio(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: status ? 'radio' : '',
          groupValue: 'radio',
          fillColor: MaterialStateColor.resolveWith((states) =>
          status ? AppColors.primaryGreen : AppColors.greyRegularText),
          activeColor: status ? AppColors.primaryGreen : AppColors.greyRegularText,
          onChanged: (value) => onChange(!status)),
    );
  }
}
