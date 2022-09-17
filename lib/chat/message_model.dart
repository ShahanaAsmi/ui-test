// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

MessageModel messageModelFromJson(String str) =>
    MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
  MessageModel({
    this.isSend,
    this.message,
    this.sendAt,
  });

  bool? isSend;

  String? message;
  String? sendAt;

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        isSend: json["isSend"],
        message: json["message"],
        sendAt: json["sendAt"],
      );

  Map<String, dynamic> toJson() => {
        "isSend": isSend,
        "message": message,
        "sendAt": sendAt,
      };
}
