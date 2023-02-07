// To parse this JSON data, do
//
//     final allJobsModel = allJobsModelFromJson(jsonString);

import 'dart:convert';

List<AllJobsModel> allJobsModelFromJson(String str) => List<AllJobsModel>.from(
    json.decode(str).map((x) => AllJobsModel.fromJson(x)));

String allJobsModelToJson(List<AllJobsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllJobsModel {
  AllJobsModel({
    required this.id,
    required this.publisherId,
    required this.image,
    required this.descreption,
    required this.tital,
    required this.links,
    required this.date,
    required this.applylink,
    required this.publisherName,
  });

  String id;
  String publisherId;
  String image;
  String descreption;
  String tital;
  String links;
  DateTime date;
  String applylink;
  String publisherName;

  factory AllJobsModel.fromJson(Map<String, dynamic> json) => AllJobsModel(
        id: json["id"],
        publisherId: json["publisher_id"],
        image: json["image"],
        descreption: json["descreption"],
        tital: json["tital"],
        links: json["links"],
        date: DateTime.parse(json["date"]),
        applylink: json["applylink"],
        publisherName: json["publisher_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "publisher_id": publisherId,
        "image": image,
        "descreption": descreption,
        "tital": tital,
        "links": links,
        "date": date.toIso8601String(),
        "applylink": applylink,
        "publisher_name": publisherName,
      };
}
