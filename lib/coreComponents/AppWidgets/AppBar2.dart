import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/ImageView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppIcons.dart';

class AppBar2 extends StatelessWidget {
  final EdgeInsets? padding;
  final String? leadIcon;
  final bool isLeadVisible;
  final double? leadIconSize;
  final Function()? onLeadTap;
  final Widget? tail;
  const AppBar2({super.key, this.padding, this.leadIcon, this.onLeadTap, this.leadIconSize, this.tail, this.isLeadVisible = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Expanded(child: Container()),
          SizedBox(child: tail)
        ],
      ),
    );
  }
}
