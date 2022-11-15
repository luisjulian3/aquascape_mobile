// To parse this JSON data, do
//
//     final temperature = temperatureFromJson(jsonString);

import 'dart:convert';
import 'dart:typed_data';

Temperature temperatureFromJson(String str) =>
    Temperature.fromJson(json.decode(str));

String temperatureToJson(Temperature data) => json.encode(data.toJson());

class Temperature {
  Temperature({
    required this.time,
    required this.value,
  });

  String time;
  Float64x2 value;

  factory Temperature.fromJson(Map<String, dynamic> json) => Temperature(
        time: json["time"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "value": value,
      };
}
