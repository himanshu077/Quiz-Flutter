import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Future<TimeOfDay?> appTimePicker(BuildContext context) async {

  final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      });
  return picked;
}
