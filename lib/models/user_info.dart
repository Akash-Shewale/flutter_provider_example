import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
  String? name;
  int? age;

  UserInfo({
    this.name,
    this.age,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    name: json["name"],
    age: json["Age"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "Age": age,
  };
}
