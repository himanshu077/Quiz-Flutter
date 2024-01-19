//
// import 'package:flutter/material.dart';
// import '../components/AppColors.dart';
// import '../components/TextStyles.dart';
//
// class AppCountryCodePicker extends StatelessWidget {
//   final Function(String code, String countryCode) onSelect;
//   final String? initValue;
//   final bool enabled;
//   const AppCountryCodePicker({super.key, required this.onSelect, this.initValue,  this.enabled = true});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           left: 43,
//           top: 18,
//           child: SizedBox(
//           height: 18,
//           child: VerticalDivider(
//             color: AppColors.black,
//             thickness: 1,
//           ),
//         ),),
//
//         CountryCodePicker(
//           initialSelection: initValue,
//           enabled: enabled,
//           // onInit: (code){if(onInit != null){
//           //   onInit!(code.toString());
//           // }},
//           onChanged: (code) {
//             // code.dialCode
//             onSelect(code.dialCode!,code.code!);
//
//           },
//           flagWidth: 25,
//           textStyle: TextStyles.regular15Black,
//         ),
//       ],
//     );
//   }
// }