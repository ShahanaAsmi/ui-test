// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'dart:convert';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
  ChatModel({
    this.image,
    this.name,
    this.updatedAt,
    this.message,
  });

  String? image;
  String? name;
  String? updatedAt;
  String? message;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        image: json["Image"],
        name: json["Name"],
        updatedAt: json["UpdatedAt"],
        message: json["Message"],
      );

  Map<String, dynamic> toJson() => {
        "Image": image,
        "Name": name,
        "UpdatedAt": updatedAt,
        "Message": message,
      };
}
