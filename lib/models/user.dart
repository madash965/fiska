import 'package:flutter/foundation.dart';

class User {
  String name;
  String password;
  String email;
  String address;
  String pNumber;

  User({
    this.name,
    this.address,
    @required this.email,
    @required this.password,
    this.pNumber,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json["email"],
      password: json["password"],
      address: json["address"],
      pNumber: json["pNumber"],
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "password": password,
      "email": email,
      "address": address,
      "pNumber": pNumber,
    };
  }
}
