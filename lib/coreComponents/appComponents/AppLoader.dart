
import 'package:flutter/material.dart';

import '../components/AppColors.dart';

appLoader(BuildContext context) {
  showDialog(
      context: context,
      // useSafeArea: true,
      barrierDismissible: false,
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
              width: 50,
              child: CircularProgressIndicator(color: AppColors.primaryGreen,)),
        ],
      )
  );
}