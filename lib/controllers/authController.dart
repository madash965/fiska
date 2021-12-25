import 'package:fiska/controllers/exception_controller.dart';
import 'package:fiska/models/user.dart';
import 'package:fiska/services/api_service.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController with BaseController {
  //var isLoading = true.obs;
  var isAuthenticated = false.obs;
  var user = UserData().obs;

  void login(String username, String password, String userType) async {
    UserLogin userLogin =
        UserLogin(username: username, password: password, userType: userType);
    try {
      //isLoading(true);
      showLoading("Loading...");
      var loginuser = await ApiService.login(userLogin).catchError(handleError);
      if (loginuser != null && loginuser.token.isNotEmpty) {
        isAuthenticated(true);
        user.value = loginuser;
        print("user:${user.value.userName}");
        print("authenticated:$isAuthenticated");
        print("token:${user.value.userName}");
      } else {
        isAuthenticated(false);
      }
      hideLoading();
    } on FlutterError catch (error) {
      print("error: $error");
    } catch (e) {
      print(e);
    }
  }

  void logout(String fcmToken, String userType) async {
    UserLogout _userLogout = UserLogout(fcmToken: fcmToken, userType: userType);
    try {
      showLoading();
      var logoutUser = await ApiService.logout(_userLogout);
      if (logoutUser == "1") {
        isAuthenticated(false);
      } else if (logoutUser == "0") {
        isAuthenticated(true);
      } else {
        return;
      }
      hideLoading();
      // print("logout: $logoutUser");
      // print("Authentication Status:$isAuthenticated");
    } catch (e) {}
  }
}
