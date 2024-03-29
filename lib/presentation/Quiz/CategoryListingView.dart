import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter_app/utils/AppExtenstions.dart';

import '../../coreComponents/AppWidgets/AppBar2.dart';
import '../../coreComponents/AppWidgets/AppBgScaffold.dart';
import '../../coreComponents/AppWidgets/CategoryCardTile.dart';
import '../../coreComponents/components/AppFonts.dart';
import '../../coreComponents/components/DummyData.dart';
import 'QuizController.dart';
import 'QuizView.dart';

class CategoryListingView extends StatefulWidget {
  const CategoryListingView({super.key});

  @override
  State<CategoryListingView> createState() => _CategoryListingViewState();
}

class _CategoryListingViewState extends State<CategoryListingView> {
  final _ctrl = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return AppBgScaffold(
      child: Column(
        children: [
          const AppBar2(
            isLeadVisible: false,
            title: 'Quiz',
          ),
          Expanded(
              child: GridView.builder(
            padding: EdgeInsets.all(AppFonts.s20),
            itemCount: catModelList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: AppFonts.s16,
                mainAxisSpacing: AppFonts.s16),
            itemBuilder: (BuildContext context, int index) => CategoryCardTile(
                data: catModelList[index],
                onTap: () {
                  _ctrl.onSelectCatAction(catModelList[index].id!);
                  context.pushNavigator(const QuizView());
                }),
          )),
        ],
      ),
    );
  }
}
