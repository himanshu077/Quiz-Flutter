import 'package:flutter/material.dart';

Future<DateTime?> appDatePicker(BuildContext context) async {

  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:  DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(3000));
  return picked;
}