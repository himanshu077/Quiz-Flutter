// import 'package:flutter/material.dart';
//
// import '../components/AppColors.dart';
// import '../components/AppFonts.dart';
// import '../components/AppIcons.dart';
// import '../components/AppStrings.dart';
// import '../components/TextStyles.dart';
// import 'AppDialog.dart';
// import 'ImageView.dart';
// import 'TapWidget.dart';
// import 'TextView.dart';
//
// enum DropDownEnum { multi, single }
//
// class DropDownWidget extends StatefulWidget {
//   final String? hint;
//   final String? value;
//   final String label;
//   final bool isOptional;
//   final bool dialogState;
//   final DropDownEnum type;
//   final List<ListTileModel> list;
//   final Function(dynamic)? onTap;
//   final String? error;
//
//   const DropDownWidget(
//       {super.key,
//       this.hint,
//       this.value,
//       required this.label,
//       this.isOptional = false,
//       required this.dialogState,
//       this.onTap,
//       required this.type, required this.list, this.error});
//
//   @override
//   State<DropDownWidget> createState() => _DropDownWidgetState();
// }
//
// class _DropDownWidgetState extends State<DropDownWidget> {
//   ListTileModel selectedItem = ListTileModel(name: '');
//   List<ListTileModel> selectedList = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MainField(
//         onTap: () {
//           if (widget.type == DropDownEnum.multi) {
//             appDialog(
//                 context,
//                 MuliSelectedListPopupView(
//                   list: widget.list,
//                   onChange: (index, item) {
//                     setState(() {
//                       widget.list[index] = item;
//                       if (item.status) {
//                         selectedList.add(item);
//                       } else {
//                         selectedList.remove(item);
//                       }
//
//                     });
//
//                     if(widget.onTap != null){
//                       widget.onTap!(selectedList);
//                     }
//                   },
//                 ));
//           } else {
//             appDialog(context, SingleSelectedListPopupView(
//                 list: widget.list,
//                 onSelect: (index){
//                   Navigator.of(context,rootNavigator: true).pop('dialog');
//                   setState(() {
//                     selectedItem = widget.list[index];
//                   });
//                   if(widget.onTap != null){
//                     widget.onTap!(widget.list[index]);
//                   }
//
//                 }));
//           }
//         },
//         label: widget.label,
//         isOptional: widget.isOptional,
//         error: widget.error,
//         valueChild: selectedList.length > 0 && widget.type == DropDownEnum.multi
//             ? SizedBox(
//                 height: AppFonts.s24,
//                 child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) => Container(
//                           padding: EdgeInsets.all(4),
//                           color: AppColors.greyLightBorder,
//                           child: Row(
//                             children: [
//                               TextView(
//                                 text: selectedList[index].name!,
//                                 textStyle: TextStyles.medium13Black,
//                                 maxlines: 1,
//                               ),
//                               ImageView(
//                                 onTap: () {
//                                   setState(() {
//                                     var item = selectedList[index];
//                                     selectedList.remove(item);
//                                     var indexx = widget.list.indexWhere(
//                                         (element) => element.name == item.name);
//                                     if (indexx > -1) {
//                                       widget.list[indexx].status = false;
//                                     }
//                                   });
//
//                                   if(widget.onTap != null){
//                                     widget.onTap!(selectedList);
//                                   }
//                                 },
//                                 url: AppIcons.cancelCross,
//                                 size: AppFonts.s14,
//                               )
//                             ],
//                           ),
//                         ),
//                     separatorBuilder: (context, index) => SizedBox(
//                           width: AppFonts.s7,
//                         ),
//                     itemCount: selectedList.length),
//               )
//             : selectedItem.name!.trim().length > 0 && widget.type == DropDownEnum.single ?
//             TextView(text: selectedItem.name!, textStyle: TextStyles.medium14GreyMidText,)
//             : TextView(text: widget.hint ?? '',textStyle: TextStyles.medium14GreyMidText,));
//
//   }
// }
//
// class MainField extends StatelessWidget {
//   final String? hint;
//   final String? value;
//   final String label;
//   final bool isOptional;
//   final Function()? onTap;
//   final Widget valueChild;
//   final String? error;
//
//   const MainField(
//       {super.key,
//       this.hint,
//       this.value,
//       required this.label,
//       required this.isOptional,
//       this.onTap,
//       required this.valueChild, this.error});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: AppFonts.s10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               TextView(
//                 text: label,
//                 textStyle: TextStyles.regular14Black,
//               ),
//               SizedBox(
//                 child: isOptional
//                     ? TextView(
//                         text: ' (${AppStrings.optional})',
//                         textStyle: TextStyles.regular14GreyMidText,
//                       )
//                     : null,
//               )
//             ],
//           ),
//           SizedBox(
//             height: AppFonts.s7,
//           ),
//             TapWidget(
//               onTap: onTap,
//               child: Container(
//                 padding: EdgeInsets.all(AppFonts.s16),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(50),
//                     border: Border.all(color:
//     error != null && error!.isNotEmpty ?
//                       AppColors.red
//         :
//                     AppColors.grayColor
//     )),
//                 child: Row(
//                   children: [
//                     Expanded(
//                         child:
//                             SizedBox(width: double.maxFinite, child: valueChild)),
//                     ImageView(
//                       url: AppIcons.dropDownButton,
//                       size: AppFonts.s14,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//
//             Visibility( visible: error != null && error!.isNotEmpty,child: TextView(text: error!, textStyle: TextStyles.regular12Red,margin: EdgeInsets.only(
//               left: AppFonts.s22, right:  AppFonts.s22, top: 5
//             ),))
//             // Positioned.fill(child: TapWidget(onTap: onTap,)),
//         ],
//       ),
//     );
//   }
// }
//
// class MuliSelectedListPopupView extends StatefulWidget {
//   final List<ListTileModel> list;
//   final Function(int, ListTileModel) onChange;
//
//   const MuliSelectedListPopupView(
//       {super.key, required this.list, required this.onChange});
//
//   @override
//   State<MuliSelectedListPopupView> createState() =>
//       _MuliSelectedListPopupViewState();
// }
//
// class _MuliSelectedListPopupViewState extends State<MuliSelectedListPopupView> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//         ListView.separated(
//         shrinkWrap: true,
//         itemBuilder: (context, index) => CheckboxListTile(
//           contentPadding: EdgeInsets.zero,
//           controlAffinity: ListTileControlAffinity.leading,
//           dense: true,
//           activeColor: AppColors.primaryGreen,
//           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           value: widget.list[index].status,
//           onChanged: (value) {
//             setState(() {
//               widget.list[index].status = value!;
//             });
//             widget.onChange(index, widget.list[index]);
//           },
//           title: TextView(
//             text: widget.list[index].name!,
//             textStyle: TextStyles.regular12SemiDarkGreyText,
//           ),
//         ),
//         separatorBuilder: (context, index) => Divider(),
//         itemCount: widget.list.length),
//       Positioned(
//         top: 0,
//         right: 0,
//         child: TapWidget(onTap: (){
//           Get.back();
//         },child: Icon(Icons.close)),
//       ),
//
//     ],) ;
//
//
//   }
// }
//
// class SingleSelectedListPopupView extends StatelessWidget {
//   final List<ListTileModel> list;
//   final Function(int) onSelect;
//
//   const SingleSelectedListPopupView(
//       {super.key, required this.list, required this.onSelect});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       ListView.separated(
//         shrinkWrap: true,
//         itemBuilder: (context, index) => TextView(
//           onTap: () => onSelect(index),
//           text: list[index].name!,
//           textStyle: TextStyles.regular12SemiDarkGreyText,
//         ),
//         separatorBuilder: (context, index) => Divider(),
//         itemCount: list.length),
//       Positioned(
//         top: 0,
//         right: 0,
//         child: TapWidget(onTap: (){
//           // Get.back();
//         },child: Icon(Icons.close)),
//       ),
//     ],) ;
//
//   }
// }
