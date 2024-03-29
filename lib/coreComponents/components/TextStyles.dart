import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'AppFonts.dart';


// - family: Rubik-ExtraBold
// fonts:
// - asset: assets/fonts/Rubik/Rubik-ExtraBold.ttf
//
// - family: Rubik-ExtraBoldItalic
// fonts:
// - asset: assets/fonts/Rubik/Rubik-ExtraBoldItalic.ttf
//
// - family: Rubik-Bold
// fonts:
// - asset: assets/fonts/Rubik/Rubik-Bold.ttf
//
// - family: Rubik-BoldItalic
// fonts:
// - asset: assets/fonts/Rubik/Rubik-BoldItalic.ttf
//
// - family: Rubik-SemiBold
// fonts:
// - asset: assets/fonts/Rubik/Rubik-SemiBold.ttf
//
// - family: Rubik-SemiBoldItalic
// fonts:
// - asset: assets/fonts/Rubik/Rubik-SemiBoldItalic.ttf
//
// - family: Rubik-Medium
// fonts:
// - asset: assets/fonts/Rubik/Rubik-Medium.ttf
//
// - family: Rubik-MediumItalic
// fonts:
// - asset: assets/fonts/Rubik/Rubik-MediumItalic.ttf
//
// - family: Rubik-Regular
// fonts:
// - asset: assets/fonts/Rubik/Rubik-Regular.ttf
//
// - family: Rubik-Italic
// fonts:
// - asset: assets/fonts/Rubik/Rubik-Italic.ttf
//
// - family: Rubik-Light
// fonts:
// - asset: assets/fonts/Rubik/Rubik-Light.ttf
//
// - family: Rubik-LightItalic
// fonts:
// - asset: assets/fonts/Rubik/Rubik-LightItalic.ttf

class Family{
  static String regular = "Rubik-Regular";
  static String medium = "Rubik-Medium";
  static String semiBold = "Rubik-SemiBold";
  static String bold = "Rubik-Bold";
  static String extraBold = "Rubik-ExtraBold";
}

class TextStyles{
  //Regular
  static TextStyle regular10Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s11, fontFamily: Family.regular);

  static TextStyle regular11White = TextStyle(color: AppColors.white, fontSize: AppFonts.s11, fontFamily: Family.regular);
  static TextStyle regular11Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s11, fontFamily: Family.regular);

  static TextStyle regular12Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s12, fontFamily: Family.regular);
  static TextStyle regular12Blue = TextStyle(color: AppColors.blue, fontSize: AppFonts.s12, fontFamily: Family.regular);
  static TextStyle regular12GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s12, fontFamily: Family.regular);
  static TextStyle regular12SemiDarkGreyText = TextStyle(color: AppColors.greySemiDarkGreyText, fontSize: AppFonts.s12, fontFamily: Family.regular);
  static TextStyle regular12Red = TextStyle(color: AppColors.red, fontSize: AppFonts.s12, fontFamily: Family.regular);
  static TextStyle regular12White = TextStyle(color: AppColors.white, fontSize: AppFonts.s12, fontFamily: Family.regular);

  static TextStyle regular13GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s13, fontFamily: Family.regular);
  static TextStyle regular13Red = TextStyle(color: AppColors.red, fontSize: AppFonts.s13, fontFamily: Family.regular);
  static TextStyle regular13Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s13, fontFamily: Family.regular);
  static TextStyle regular13P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s13, fontFamily: Family.regular);
  static TextStyle regular13P_Green_underLine = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s13, fontFamily: Family.regular, decoration: TextDecoration.underline, decorationColor: AppColors.primaryGreen);

  static TextStyle regular14Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14DarkText = TextStyle(color: AppColors.darkTextColor, fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14PWhite = TextStyle(color: AppColors.white, fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14Red = TextStyle(color: AppColors.red, fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14LightGrey1({double? opacity}) => TextStyle(color: AppColors.greyLightBorder.withOpacity(opacity ?? 1), fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s14, fontFamily: Family.regular);
  static TextStyle regular14GreyMidTextLine200 = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s14, fontFamily: Family.regular,);
  static TextStyle regular14GreySemiDarkGreyText = TextStyle(color: AppColors.greySemiDarkGreyText, fontSize: AppFonts.s14, fontFamily: Family.regular);

  static TextStyle regular15Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s15, fontFamily: Family.regular);
  static TextStyle regular15DarkText= TextStyle(color: AppColors.darkTextColor, fontSize: AppFonts.s15, fontFamily: Family.regular);
  static TextStyle regular15SemiDarkGreyText = TextStyle(color: AppColors.greySemiDarkGreyText, fontSize: AppFonts.s15, fontFamily: Family.regular);
  static TextStyle regular15White = TextStyle(color: AppColors.white, fontSize: AppFonts.s15, fontFamily: Family.regular);
  static TextStyle regular15Red2 = TextStyle(color: AppColors.red2, fontSize: AppFonts.s15, fontFamily: Family.regular);
  static TextStyle regular15Red = TextStyle(color: AppColors.red, fontSize: AppFonts.s15, fontFamily: Family.regular);
  static TextStyle regular15Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s15, fontFamily: Family.regular);

  static TextStyle regular16Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s16, fontFamily: Family.regular);
  static TextStyle regular16DarkText= TextStyle(color: AppColors.darkTextColor, fontSize: AppFonts.s16, fontFamily: Family.regular);
  static TextStyle regular16GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s16, fontFamily: Family.regular);

  static TextStyle regular17GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s17, fontFamily: Family.regular);
  static TextStyle regular17P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s17, fontFamily: Family.regular);
  static TextStyle regular17black = TextStyle(color: AppColors.black, fontSize: AppFonts.s17, fontFamily: Family.regular);
  static TextStyle regular17White = TextStyle(color: AppColors.white, fontSize: AppFonts.s17, fontFamily: Family.regular);

  static TextStyle regular18Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s18, fontFamily: Family.regular);

  static TextStyle regular19White = TextStyle(color: AppColors.white, fontSize: AppFonts.s18, fontFamily: Family.regular);
  static TextStyle regular19Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s18, fontFamily: Family.regular);



  //medium
  static TextStyle medium10Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s10, fontFamily: Family.medium);

  static TextStyle medium12P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s12, fontFamily: Family.medium);
  static TextStyle medium12GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s12, fontFamily: Family.medium);

  static TextStyle medium13P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s13, fontFamily: Family.medium);
  static TextStyle medium13Red = TextStyle(color: AppColors.red, fontSize: AppFonts.s13, fontFamily: Family.medium);
  static TextStyle medium13Yellow = TextStyle(color: AppColors.yellow, fontSize: AppFonts.s13, fontFamily: Family.medium);
  static TextStyle medium13Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s13, fontFamily: Family.medium);

  static TextStyle medium14GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s14, fontFamily: Family.medium);
  static TextStyle medium14P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s14, fontFamily: Family.medium);
  static TextStyle medium14Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s14, fontFamily: Family.medium);
  static TextStyle medium14White = TextStyle(color: AppColors.white, fontSize: AppFonts.s14, fontFamily: Family.medium);

  static TextStyle medium15Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s14, fontFamily: Family.medium);

  static TextStyle medium16DarkText = TextStyle(color: AppColors.darkTextColor, fontSize: AppFonts.s16, fontFamily: Family.medium);
  static TextStyle medium16Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s16, fontFamily: Family.medium);
  static TextStyle medium16White = TextStyle(color: AppColors.white, fontSize: AppFonts.s16, fontFamily: Family.medium);
  static TextStyle medium16GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s16, fontFamily: Family.medium);
  static TextStyle medium16P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s16, fontFamily: Family.medium);

  static TextStyle medium17Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s17, fontFamily: Family.medium);

  static TextStyle medium18Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s18, fontFamily: Family.medium);

  static TextStyle medium20Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s20, fontFamily: Family.medium);

  static TextStyle medium24BorderGrey = TextStyle(color: AppColors.greyLightBorder, fontSize: AppFonts.s24, fontFamily: Family.medium);





  //SemiBold
  static TextStyle semiBold12P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s12, fontFamily: Family.semiBold);
  static TextStyle semiBold12GreyMidText = TextStyle(color: AppColors.greyMidText, fontSize: AppFonts.s12, fontFamily: Family.semiBold);

  static TextStyle semiBold14P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s14, fontFamily: Family.semiBold);

  static TextStyle semiBold16Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s16, fontFamily: Family.semiBold);
  static TextStyle semiBold16P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s16, fontFamily: Family.semiBold);

  static TextStyle semiBold18P_Red = TextStyle(color: AppColors.red, fontSize: AppFonts.s18, fontFamily: Family.semiBold);
  static TextStyle semiBold18P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s18, fontFamily: Family.semiBold);

  static TextStyle semiBold20Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s20, fontFamily: Family.semiBold);

  static TextStyle semiBold22P_Green = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s22, fontFamily: Family.semiBold);
  static TextStyle semiBold22White = TextStyle(color: AppColors.white, fontSize: AppFonts.s22, fontFamily: Family.semiBold);

  static TextStyle semiBold30Black = TextStyle(color: AppColors.black, fontSize: AppFonts.s30, fontFamily: Family.semiBold);




  //Bold
  static TextStyle bold10PrimaryGreen = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s10, fontFamily: Family.bold);

  static TextStyle bold17PrimaryGreen = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s17, fontFamily: Family.bold);
  static TextStyle bold17PrimaryWhite = TextStyle(color: AppColors.white, fontSize: AppFonts.s17, fontFamily: Family.bold);

  //extra Bold
  static TextStyle extraBold10PrimaryGreen = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s10, fontFamily: Family.extraBold);

  static TextStyle extraBold17PrimaryGreen = TextStyle(color: AppColors.primaryGreen, fontSize: AppFonts.s17, fontFamily: Family.extraBold);
  static TextStyle extraBold17PrimaryWhite = TextStyle(color: AppColors.white, fontSize: AppFonts.s17, fontFamily: Family.extraBold);

  static TextStyle extraBold40PrimaryWhite = TextStyle(color: AppColors.white, fontSize: AppFonts.s40, fontFamily: Family.extraBold);
}