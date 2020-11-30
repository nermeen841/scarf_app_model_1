import 'dart:convert';
import 'package:dio/dio.dart';

class NetWork {
  Dio dio = Dio();

  String baseUrl = '';

  Future<dynamic> getData(
      {String url, List<Map<String, dynamic>> headers}) async {
    try {
      var jsonResponse;
      dio.options.baseUrl = baseUrl;
      headers != null ? dio.options.headers = headers[0] : '';
      Response response = await dio.get('$url');
      if (response.statusCode >= 200 && response.statusCode < 300) {
        jsonResponse = json.decode(response.toString());
        print("____________FROM DDDDDDD" + jsonResponse.toString());
        if (jsonResponse['status'].toString() == "true")
          return jsonResponse;
        else {
          throw jsonResponse['data'];
        }
      } else {
        return response;
      }
    } on DioError catch (e) {
      print(e.response.statusCode);
      print("saldjslaijdlijasljd");
      if (e.response.statusCode == 500) {
        print("mahdmsakhdasijhdkas");
        throw "تعذر الوصول للسيرفر";
      }

      if (e.type == DioErrorType.DEFAULT) {
        throw "لا يوجد اتصال بالانترنت ";
      }
    }
  }

  Future<dynamic> postData(
      {FormData formData, Map<String, dynamic> headers, String url}) async {
    try {
      dio.options.baseUrl = baseUrl;
      headers != null ? dio.options.headers = headers : '';
      Map<String, dynamic> jsonResponse;
      Response response = await dio.post(url, data: formData);
      jsonResponse = response.data;
      print("----------------------");
      // print(formData.fields);
      // return;
      if (response.statusCode >= 200 && response.statusCode < 300) {
        print("mahsdkajskjdkaljsd");
        print(jsonResponse);
        if (jsonResponse['status'].toString() == "true") {
          print("mahsdkajskjdkaljsd2232");
          return jsonResponse;
        } else {
          print("-----------------");
          throw jsonResponse['data'];
        }
      } else if (response == null) {
        print("-------------------response null");
        return response;
      } else {
        print("-------------------response null2");
        return response;
      }
    } on DioError catch (e) {
      print(e.response);
      // print("")
      if (e.type == DioErrorType.DEFAULT) {
        throw "لا يوجد اتصال بالانترنت ";
      } else {
        throw e.toString();
      }
    }
  }
}