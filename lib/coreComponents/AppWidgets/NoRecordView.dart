// import 'package:flutter/cupertino.dart';
// import 'package:qiko_baber_admin/appComponents/ImageView.dart';
// import 'package:qiko_baber_admin/appComponents/TextView.dart';
// import 'package:qiko_baber_admin/components/AppIcons.dart';
//
// import '../components/AppFonts.dart';
// import '../components/TextStyles.dart';
//
// class NoRecordView extends StatelessWidget {
//   final String? icon;
//   final String? message;
//   final EdgeInsets? margin;
//   const NoRecordView({super.key, this.icon, this.message, this.margin});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: margin ?? EdgeInsets.zero,
//       child: Column(
//         children: [
//           ImageView(
//             url: icon ?? AppIcons.help,
//             size: 80,
//             // margin: EdgeInsets.only(top: AppFonts.s40 * 1.5,),
//           ),
//           TextView(
//             text: message ?? 'No booking found',
//             textStyle: TextStyles.semiBold16Black,
//             margin: EdgeInsets.only(top: AppFonts.s10),
//           )
//         ],
//       ),
//     );
//   }
// }
