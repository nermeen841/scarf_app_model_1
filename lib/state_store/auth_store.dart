import 'dart:convert';

import 'package:scarf_app_model_1/data/auth_model.dart';
import 'package:scarf_app_model_1/domain/category/auth_repo/auth_repo_inter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStor {
  final IAuthRepo authRepo;

  AuthStor(this.authRepo);

  UserData userData;

  Future<UserData> register(String name, String password, String email,
      String phone) async {
    userData = UserData.fromJson(
        await authRepo.register(name, password, email, phone));
    print(userData);
    return userData;
  }

  Future<UserData> login(String password, String email) async {
    userData = UserData.fromJson(await authRepo.login(email, password));
    if (userData.msg.toString() == "true") {
      print("----------sucess");
      if (userData.data.isActive == 1) {
        setData("${userData.toJson()}");
      }
    }
    return userData;
  }



  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // IN.get<AuthStor>().userData;
    final tempData = prefs.getString("userData");
    if (tempData != null) {
      userData = UserData.fromJson(json.decode(tempData));
    }
  }

  void setData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final tempData = prefs.setString("userData", data);
    if (tempData != null) {
      userData = UserData.fromJson(json.decode(data));
    }
  }
}
