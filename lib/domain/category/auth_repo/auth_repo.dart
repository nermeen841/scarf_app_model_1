
import 'package:dio/dio.dart';
import 'package:scarf_app_model_1/core/api_utiliti.dart';
import 'auth_repo_inter.dart';

class AuthRepo implements IAuthRepo {

  NetWork _netWork = NetWork();
  Dio dio = new Dio();

  @override
  Future login(String email, String pass) async {
    FormData formData = FormData();

    formData.fields..add(MapEntry('password', pass));
    formData.fields..add(MapEntry('email', email));

    try {
      final x = await _netWork.postData(
        url: "https://myscarf.com.sa/api/auth/login",
        formData: formData,
        // headers:
        headers: {
          "Accept": "*/*",
          "Content-Type": "application/json"
        },
      );
      return x;
    } catch (e) {
      print(e);
      if (e.toString().contains("email")) throw "هذا الايميل ليس مستخدم";
      throw e.toString();
    }
  }

  @override
  Future register(String name, String password, String email, String phone) {
    String(device_token) async {
      FormData formData = FormData();
      formData.fields..add(MapEntry('name', name));
      formData.fields..add(MapEntry('password', password));
      formData.fields..add(MapEntry('email', email));
      formData.fields..add(MapEntry('phone', phone));

      try {
        final x = await _netWork.postData(
          url: "https://myscarf.com.sa/api/auth/register",
          formData: formData,
          // headers:
          headers: {
            "Accept": "*/*",
            "Content-Type": "application/json"
          },
        );
        return x;
      } catch (e) {
        if (e.toString().contains("phone")) throw "هذا الموبايل مستخدم مسبقا";
        if (e.toString().contains("email")) throw "هذا البريد مستخدم مسبقا";
        throw e.toString();
      }
    }
  }



  @override
  Future verfiycode(String code, String phone) async {
    FormData formData = FormData();
    formData.fields..add(MapEntry('code', code));
    formData.fields..add(MapEntry('phone', phone));
    try {
      final x = await _netWork.postData(
        url: "https://websitte.black-whales.com/api/activcodeuser",
        formData: formData,
        // headers:
        headers: {
          "Accept": "*/*",
          "Content-Type": "application/json"
        },
      );
      return x;
    } catch (e) {
      if (e.toString().contains("phone")) throw "هذا الموبايل لم يستخدم مسبقا";
      if (e.toString().contains("false Code")) throw "هذا الكود خظا";
      throw e.toString();
    }
    // TODO: implement verfiycode
    // throw UnimplementedError();
  }

  @override
  Future forgetpassword(String email) async {
    FormData formData = FormData();
    formData.fields..add(MapEntry('email', email));
    try {
      final x = await _netWork.postData(
        url: "https://myscarf.com.sa/api/auth/forget/password",
        formData: formData,
        // headers:
        headers: {
          "Accept": "*/*",
          "Content-Type": "application/json"
        },
      );
      return x;
    } catch (e) {
      throw e.toString();
    }
  }
  }

