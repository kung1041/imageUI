// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<gendermodel> welcomeFromJson(String str) => List<gendermodel>.from(
    json.decode(str).map((x) => gendermodel.fromJson(x)));

String welcomeToJson(List<gendermodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class gendermodel {
  gendermodel({
    this.id,
    this.chooseGender,
  });

  String id;
  String chooseGender;

  factory gendermodel.fromJson(Map<String, dynamic> json) => gendermodel(
        id: json["id"],
        chooseGender: json["chooseGender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "chooseGender": chooseGender,
      };
}
