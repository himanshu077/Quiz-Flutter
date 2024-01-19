import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/AppColors.dart';

class AppToggle extends StatelessWidget {
  final bool state;
  final Function(bool) onChanged;
  const AppToggle({super.key, required this.state, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.7,
      child: CupertinoSwitch(
        activeColor: AppColors.primaryLightGreen,
        thumbColor: AppColors.white,
        value: state,
        onChanged: onChanged,
      ),
    );
  }
}
