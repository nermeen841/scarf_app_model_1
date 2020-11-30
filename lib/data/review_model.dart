class ReviewModel {
  bool status;
  List<Data> data;

  ReviewModel({this.status, this.data});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String userName;
  String userImage;
  int rating;
  String comment;
  bool canDeleteReview;
  String createdAt;

  Data(
      {this.id,
        this.userName,
        this.userImage,
        this.rating,
        this.comment,
        this.canDeleteReview,
        this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    userImage = json['user_image'];
    rating = json['rating'];
    comment = json['comment'];
    canDeleteReview = json['can_delete_review'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['user_image'] = this.userImage;
    data['rating'] = this.rating;
    data['comment'] = this.comment;
    data['can_delete_review'] = this.canDeleteReview;
    data['created_at'] = this.createdAt;
    return data;
  }
}


