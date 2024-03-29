import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/coreComponents/AppWidgets/AppBgScaffold.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';
import 'package:quiz_flutter_app/presentation/Auth/LoginView.dart';
import 'package:quiz_flutter_app/presentation/Quiz/CategoryListingView.dart';
import 'package:quiz_flutter_app/utils/AppExtenstions.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    nextScreen();
  }

  // navigate to next view after delay of 3 sec...
  void nextScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      context.replaceNavigator(const CategoryListingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBgScaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextView(text: 'Quiz', textStyle: TextStyles.extraBold40PrimaryWhite,)
          ],
        )
    );
  }
}
