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

  get token => null;

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

class UserProfile {
  UserProfile._privateConstructor();

  static final UserProfile _instance = UserProfile._privateConstructor();

  factory UserProfile() {
    return _instance;
  }
  ProfileData pro = ProfileData();
}

class ProfileData {
  String name;
  String mobile;
  Null joinDate;
  int todayTasks;
  int weekTasks;
  int monthTasks;
  int rating;
  int totalTasks;
  int averageDeliveryTime;
  int averageTime;
  List<Null> achievements;

  ProfileData(
      {this.name,
      this.mobile,
      this.joinDate,
      this.todayTasks,
      this.weekTasks,
      this.monthTasks,
      this.rating,
      this.totalTasks,
      this.averageDeliveryTime,
      this.averageTime,
      this.achievements});

  ProfileData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mobile = json['mobile'];
    joinDate = json['join_date'];
    todayTasks = json['today_tasks'];
    weekTasks = json['week_tasks'];
    monthTasks = json['month_tasks'];
    rating = json['rating'];
    totalTasks = json['total_tasks'];
    averageDeliveryTime = json['average_delivery_time'];
    averageTime = json['average_time'];
    if (json['achievements'] != null) {
      achievements = new List<Null>();
      json['achievements'].forEach((v) {
        // achievements.add(new Null.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   data['mobile'] = this.mobile;
  //   data['join_date'] = this.joinDate;
  //   data['today_tasks'] = this.todayTasks;
  //   data['week_tasks'] = this.weekTasks;
  //   data['month_tasks'] = this.monthTasks;
  //   data['rating'] = this.rating;
  //   data['total_tasks'] = this.totalTasks;
  //   data['average_delivery_time'] = this.averageDeliveryTime;
  //   data['average_time'] = this.averageTime;
  //   if (this.achievements != null) {
  //     data['achievements'] = this.achievements.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}
