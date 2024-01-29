import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/presentation/Quiz/QuizView.dart';
import 'package:quiz_flutter_app/utils/AppExtenstions.dart';

import '../../coreComponents/AppWidgets/AppBgScaffold.dart';
import '../../coreComponents/appComponents/AppButton.dart';
import '../../coreComponents/appComponents/EditText.dart';
import '../../coreComponents/appComponents/TextView.dart';
import '../../coreComponents/components/AppFonts.dart';
import '../../coreComponents/components/TextStyles.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return AppBgScaffold(
      padding: EdgeInsets.all(AppFonts.s20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextView(text: "Let's Play Quiz", textStyle: TextStyles.extraBold40PrimaryWhite,),
            TextView(text: "Enter your information below", textStyle: TextStyles.medium14White,),

            EditText(
              controller: TextEditingController(),
              hint: 'Full Name',
              margin: EdgeInsets.symmetric(
                vertical: AppFonts.s40 * 2
              ),
            ),
            AppButton(
              onTap: (){
                // context.pushAndClearNavigator(const QuizView());
                context.pushNavigator(const QuizView());
              },
              label: "Let's Start Qiz",
            )
          ],
        )
    );
  }
}
