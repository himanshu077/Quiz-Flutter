// To parse this JSON data, do
//
//     final McqOptionItemModel = McqOptionItemModelFromJson(jsonString);

import 'dart:convert';
enum McqItemStatusEmun {unAttempt,wrong,right}

McqOptionItemModel McqOptionItemModelFromJson(String str) => McqOptionItemModel.fromJson(json.decode(str));

String McqOptionItemModelToJson(McqOptionItemModel data) => json.encode(data.toJson());

class McqOptionItemModel {
  String? value;
  McqItemStatusEmun? status;

  McqOptionItemModel({
    this.value,
    this.status,
  });

  factory McqOptionItemModel.fromJson(Map<String, dynamic> json) => McqOptionItemModel(
    value: json["value"],
    status: json["status"] != null ? McqItemStatusEmun.right.name == json["status"] ? McqItemStatusEmun.right :
    McqItemStatusEmun.wrong.name == json["status"] ? McqItemStatusEmun.wrong : McqItemStatusEmun.unAttempt : null,
  );

  Map<String, dynamic> toJson()
      {
       return {
          "value": value,
          "status": status?.name,
        };
      }
}


// class Option {
//   String? value;
//   String? status;
//
//   Option({
//     this.value,
//     this.status,
//   });
//
//   factory Option.fromJson(Map<String, dynamic> json) => Option(
//     value: json["value"],
//     status: json["status"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "value": value,
//     "status": status,
//   };
// }
