import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/ImageView.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppIcons.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';

class AppBar2 extends StatelessWidget {
  final EdgeInsets? padding;
  final String? leadIcon;
  final bool isLeadVisible;
  final double? leadIconSize;
  final Function()? onLeadTap;
  final Widget? tail;
  final String? title;
  const AppBar2({super.key, this.padding, this.leadIcon, this.onLeadTap, this.leadIconSize, this.tail, this.isLeadVisible = true, this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding ?? EdgeInsets.all(AppFonts.s16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: isLeadVisible,
              child: ImageView(
                onTap: onLeadTap,
                  url: leadIcon ?? AppIcons.backButton,
                size: leadIconSize ?? AppFonts.s20,
              ),
            ),
            Expanded(child: TextView(text: title ?? '',textStyle: TextStyles.semiBold22White,)),
            SizedBox(child: tail)
          ],
        ),
      ),
    );
  }
}
