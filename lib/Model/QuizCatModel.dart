// To parse this JSON data, do
//
//     final quizCatModel = quizCatModelFromJson(jsonString);

import 'dart:convert';

QuizCatModel quizCatModelFromJson(String str) => QuizCatModel.fromJson(json.decode(str));

String quizCatModelToJson(QuizCatModel data) => json.encode(data.toJson());

class QuizCatModel {
  int? id;
  String? name;
  List<QuizList>? quizList;
  String? icon;

  QuizCatModel({
    this.id,
    this.name,
    this.quizList,
    this.icon,
  });

  factory QuizCatModel.fromJson(Map<String, dynamic> json) => QuizCatModel(
    id: json["id"],
    name: json["name"],
    quizList: json["quizList"] == null ? [] : List<QuizList>.from(json["quizList"]!.map((x) => QuizList.fromJson(x))),
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "quizList": quizList == null ? [] : List<dynamic>.from(quizList!.map((x) => x.toJson())),
    "icon": icon,
  };
}

class QuizList {
  String? question;
  List<Option>? options;
  String? answer;
  int? selectedValue;

  QuizList({
    this.question,
    this.options,
    this.answer,
    this.selectedValue,
  });

  factory QuizList.fromJson(Map<String, dynamic> json) => QuizList(
    question: json["question"],
    options: json["options"] == null ? [] : List<Option>.from(json["options"]!.map((x) => Option.fromJson(x))),
    answer: json["answer"],
    selectedValue: json["selectedValue"],
  );

  Map<String, dynamic> toJson() => {
    "question": question,
    "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
    "answer": answer,
    "selectedValue": selectedValue,
  };
}

class Option {
  String? value;
  String? status;

  Option({
    this.value,
    this.status,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    value: json["value"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "status": status,
  };
}
