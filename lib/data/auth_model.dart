import 'dart:convert';

class UserData {
  String msg;
  Data data;

  UserData({this.msg, this.data});

  UserData.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  String phone;
  String image;
  int gender;
  String birthday;
  int code;
  int type;
  int isActive;
  int isOnline;
  int countryId;
  String email;
  String emailVerifiedAt;
  String apiToken;
  String deviceToken;
  String googleToken;
  String fcToken;
  String createdAt;
  String updatedAt;

  Data(
      {this.id,
        this.name,
        this.phone,
        this.image,
        this.gender,
        this.birthday,
        this.code,
        this.type,
        this.isActive,
        this.isOnline,
        this.countryId,
        this.email,
        this.emailVerifiedAt,
        this.apiToken,
        this.deviceToken,
        this.googleToken,
        this.fcToken,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    gender = json['gender'];
    birthday = json['birthday'];
    code = json['code'];
    type = json['type'];
    isActive = json['is_active'];
    isOnline = json['is_online'];
    countryId = json['country_id'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    apiToken = json['api_token'];
    deviceToken = json['device_token'];
    googleToken = json['google_token'];
    fcToken = json['fc_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['code'] = this.code;
    data['type'] = this.type;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['api_token'] = this.apiToken;
    data['device_token'] = this.deviceToken;
    data['fc_token'] = this.fcToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
