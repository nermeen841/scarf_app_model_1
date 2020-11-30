class MostVisitedModel {
  bool status;
  List<Data> data;

  MostVisitedModel({this.status, this.data});

  MostVisitedModel.fromJson(Map<String, dynamic> json) {
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
  String name;
  int price;
  bool hasOffer;
  String currency;
  int oldPrice;
  String description;
  String image;
  List<String> images;
  bool isFavorite;
  String rating;

  Data(
      {this.id,
        this.name,
        this.price,
        this.hasOffer,
        this.currency,
        this.oldPrice,
        this.description,
        this.image,
        this.images,
        this.isFavorite,
        this.rating});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    hasOffer = json['has_offer'];
    currency = json['currency'];
    oldPrice = json['old_price'];
    description = json['description'];
    image = json['image'];
    images = json['images'].cast<String>();
    isFavorite = json['is_favorite'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['has_offer'] = this.hasOffer;
    data['currency'] = this.currency;
    data['old_price'] = this.oldPrice;
    data['description'] = this.description;
    data['image'] = this.image;
    data['images'] = this.images;
    data['is_favorite'] = this.isFavorite;
    data['rating'] = this.rating;
    return data;
  }
}
