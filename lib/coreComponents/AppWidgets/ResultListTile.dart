import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/Model/MCQModel.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/TextView.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppFonts.dart';
import 'package:quiz_flutter_app/coreComponents/components/TextStyles.dart';

class ResultListTile extends StatelessWidget {
  final McqModel data;
  const ResultListTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    bool? isCorrect() {
      return data.selectedValue != null ? data.options![data.selectedValue!].value == data.answer : null;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextView(
          text: data.question ?? '',
          textStyle: TextStyles.medium14White,
          margin: const EdgeInsets.only(bottom: 5),
        ),

        Row(
          children: [
            SizedBox(
              width: AppFonts.s20,
              child: isCorrect() != null ? isCorrect()! ? TextView(
                      text: '\u2713 ',
                      textStyle: TextStyles.regular15Green,
                    )
                  : TextView(
                      text: '\u2717 ',
                      textStyle: TextStyles.regular15Red,
                    ) : null,
            ),
            TextView(
              text: '${data.selectedValue!= null ? data.options![data.selectedValue!].value : 'Not Attempted'}',
              textStyle: TextStyles.regular12White,
            )
          ],
        )

        // Text('2018 \u00a9 Author's Name'),
      ],
    );
  }
}

// (U+2713)
