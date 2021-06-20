import 'package:flutter_deliveryapp/apiServ/apiService.dart';

class UserData {
  UserData._privateConstructor();

  static final UserData _instance = UserData._privateConstructor();

  factory UserData() {
    return _instance;
  }
  UserModel user = UserModel();
}

class UserModel {
  int deliveryBoyId;
  String fullname;
  String phone;
  String email;
  String address;
  int gender;
  int regionId;
  Null photo;
  List<Regions> regions;
  int termsAccepted;
  dynamic tocken;

  UserModel(
      {this.deliveryBoyId,
      this.fullname,
      this.phone,
      this.email,
      this.address,
      this.gender,
      this.regionId,
      this.photo,
      this.regions,
      this.termsAccepted});

  UserModel.fromJson(Map<String, dynamic> json) {
    deliveryBoyId = json['delivery_boy_id'];
    fullname = json['fullname'];
    phone = json['phone'];
    email = json['email'];
    address = json['address'];
    gender = json['gender'];
    regionId = json['region_id'];
    photo = json['photo'];
    if (json['regions'] != null) {
      regions = new List<Regions>();
      json['regions'].forEach((v) {
        regions.add(new Regions.fromJson(v));
      });
    }
    termsAccepted = json['terms_accepted'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['delivery_boy_id'] = this.deliveryBoyId;
  //   data['fullname'] = this.fullname;
  //   data['phone'] = this.phone;
  //   data['email'] = this.email;
  //   data['address'] = this.address;
  //   data['gender'] = this.gender;
  //   data['region_id'] = this.regionId;
  //   data['photo'] = this.photo;
  //   if (this.regions != null) {
  //     data['regions'] = this.regions.map((v) => v.toJson()).toList();
  //   }
  //   data['terms_accepted'] = this.termsAccepted;
  //   return data;
  // }
}

class Regions {
  int id;
  String name;

  Regions({this.id, this.name});

  Regions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   return data;
  // }
}
