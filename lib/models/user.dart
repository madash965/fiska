import 'dart:convert';
import 'package:flutter/material.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.status,
    this.msg,
    this.data,
  });

  String status;
  String msg;
  UserData data;

  factory User.fromJson(Map<String, dynamic> json) => User(
        status: json["status"],
        msg: json["msg"],
        data: UserData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data.toJson(),
      };
}

class UserData {
  UserData({
    this.currencySymbol,
    this.totalFavouriteItems,
    this.totalUnreadMessageCount,
    this.totalUnreadNotificationCount,
    this.cartItemsCount,
    this.userName,
    this.userId,
    this.userPhoneDcode,
    this.userPhone,
    this.credentialEmail,
    this.token,
    this.userImage,
  });

  String currencySymbol;
  String totalFavouriteItems;
  String totalUnreadMessageCount;
  String totalUnreadNotificationCount;
  String cartItemsCount;
  String userName;
  String userId;
  String userPhoneDcode;
  String userPhone;
  String credentialEmail;
  String token;
  String userImage;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        currencySymbol: json["currencySymbol"],
        totalFavouriteItems: json["totalFavouriteItems"],
        totalUnreadMessageCount: json["totalUnreadMessageCount"],
        totalUnreadNotificationCount: json["totalUnreadNotificationCount"],
        cartItemsCount: json["cartItemsCount"],
        userName: json["user_name"],
        userId: json["user_id"],
        userPhoneDcode: json["user_phone_dcode"],
        userPhone: json["user_phone"],
        credentialEmail: json["credential_email"],
        token: json["token"],
        userImage: json["user_image"],
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "totalFavouriteItems": totalFavouriteItems,
        "totalUnreadMessageCount": totalUnreadMessageCount,
        "totalUnreadNotificationCount": totalUnreadNotificationCount,
        "cartItemsCount": cartItemsCount,
        "user_name": userName,
        "user_id": userId,
        "user_phone_dcode": userPhoneDcode,
        "user_phone": userPhone,
        "credential_email": credentialEmail,
        "token": token,
        "user_image": userImage,
      };
}

UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userLoginToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
  String username;
  String password;
  String userType;

  UserLogin({
    @required this.username,
    @required this.password,
    @required this.userType,
  });

  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        username: json["username"],
        password: json["password"],
        userType: json["userType"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "userType": userType,
      };
}

class UserLogout {
  final String fcmToken;
  final String userType;

  UserLogout({
    @required this.fcmToken,
    @required this.userType,
  });

  Map<String, dynamic> toJson() => {"fcmToken": fcmToken, "userType": userType};
}

class ChangePassword {
  final String oldPassword;
  final String newPasword;

  ChangePassword({this.oldPassword, this.newPasword});
}
