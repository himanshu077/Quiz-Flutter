import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';

import '../components/AppColors.dart';

class EditText extends StatefulWidget {
  final TextEditingController controller;
  final bool? readOnly;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? radius;
  final Color? borderColor;
  final Color? filledColor;
  final bool isFilled;
  final String? hint;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  const EditText({super.key, required this.controller, this.readOnly, this.padding, this.margin, this.radius, this.borderColor, this.filledColor, this.isFilled = true, this.hint, this.hintStyle, this.textStyle});

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {

  @override
  Widget build(BuildContext context) {
    final borderStyle = _borderStyle(borderColor: widget.borderColor,radius: widget.radius);
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: TextField(
        style: widget.textStyle ?? TextStyles.regular14PWhite,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: widget.hintStyle ?? TextStyles.regular14LightGrey1(opacity: 0.7),
            filled: widget.isFilled,
          fillColor: widget.filledColor ?? AppColors.greySemiDarkGreyText,
          enabledBorder: borderStyle,
          border: borderStyle,
          focusedBorder: borderStyle,
        ),
        readOnly: widget.readOnly ?? false,
        controller: widget.controller,
      ),
    );
  }
}

InputBorder _borderStyle({double? radius, Color? borderColor}){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius??AppFonts.s10),
      borderSide: BorderSide(color:borderColor?? AppColors.primaryGreen, width: 2));
}
