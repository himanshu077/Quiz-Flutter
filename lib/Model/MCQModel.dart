// To parse this JSON data, do
//
//     final mcqModel = mcqModelFromJson(jsonString);

import 'dart:convert';

import 'package:quiz_flutter_app/Model/MCQOptionItemModel.dart';

McqModel mcqModelFromJson(String str) => McqModel.fromJson(json.decode(str));

String mcqModelToJson(McqModel data) => json.encode(data.toJson());

class McqModel {
  String? question;
  List<McqOptionItemModel>? options;
  String? answer;
  int? selectedValue;
  int timeConsumed;
  bool isClosed;

  McqModel({
    this.question,
    this.options,
    this.answer,
    this.selectedValue,
    this.timeConsumed = 0,
    this.isClosed = false,
  });

  factory McqModel.fromJson(Map<String, dynamic> json) => McqModel(
    question: json["question"],
    options: json["options"] == null ? [] : List<McqOptionItemModel>.from(json["options"]!.map((x) => McqOptionItemModel.fromJson(x))),
    answer: json["answer"],
    selectedValue: json['selectedValue'],
    timeConsumed: json['timeConsumed'] ?? 0,
    isClosed: json['isClosed'] ?? false
  );


  Map<String, dynamic> toJson(){
    return {
      "question": question,
      "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
      "answer": answer,
      "selectedValue": selectedValue,
      "timeConsumed": timeConsumed,
      "isClosed": isClosed
    };
  }
}
