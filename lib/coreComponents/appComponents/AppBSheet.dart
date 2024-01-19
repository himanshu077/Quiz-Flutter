 import 'package:flutter/material.dart';

import '../components/AppColors.dart';
import '../components/AppFonts.dart';

appBSheet(BuildContext context, Widget child,{Color? barrierColor}){
    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        barrierColor: barrierColor,
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppFonts.s30),
              topLeft: Radius.circular(AppFonts.s30)
          ),
        ),
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(top: AppFonts.s20),
            child: child,
          );});

 }
