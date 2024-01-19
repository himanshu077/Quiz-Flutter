// import 'package:flutter/material.dart';
//
// import '../components/AppFonts.dart';
// import '../components/AppIcons.dart';
// import 'ImageView.dart';
//
// class AppRatingBar extends StatelessWidget {
//   ValueChanged<double> onRatingUpdate ;
//   AppRatingBar({super.key, required this.onRatingUpdate});
//
//   @override
//   Widget build(BuildContext context) {
//     return RatingBar(
//       initialRating: 0,
//       direction: Axis.horizontal,
//       allowHalfRating: false,
//       itemCount: 5,
//       itemSize: AppFonts.s24,
//       ratingWidget: RatingWidget(
//         full: ImageView(url: AppIcons.star,),
//         empty: ImageView(url: AppIcons.starInActive,),
//         half: ImageView(url: AppIcons.starInActive,),
//       ),
//       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//       onRatingUpdate: onRatingUpdate,
//     );
//   }
// }
