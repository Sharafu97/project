class UserData {
  UserData._privateConstructor();

  static final UserData _instance = UserData._privateConstructor();

  factory UserData() {
    return _instance;
  }
  UserModel user = UserModel();
}

class UserModel {
  String stId;
  String stDate;
  String stName;
  String stEmail;
  String stPassword;
  String stPass;
  String stMobile;
  String stClass;
  String stStartdate;
  String stEnddate;
  String stLogged;
  String stStatus;

  UserModel(
      {this.stId,
      this.stDate,
      this.stName,
      this.stEmail,
      this.stPassword,
      this.stPass,
      this.stMobile,
      this.stClass,
      this.stStartdate,
      this.stEnddate,
      this.stLogged,
      this.stStatus});

  UserModel.fromJson(Map<String, dynamic> json) {
    stId = json['st_id'];
    stDate = json['st_date'];
    stName = json['st_name'];
    stEmail = json['st_email'];
    stPassword = json['st_password'];
    stPass = json['st_pass'];
    stMobile = json['st_mobile'];
    stClass = json['st_class'];
    stStartdate = json['st_startdate'];
    stEnddate = json['st_enddate'];
    stLogged = json['st_logged'];
    stStatus = json['st_status'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['st_id'] = this.stId;
  //   data['st_date'] = this.stDate;
  //   data['st_name'] = this.stName;
  //   data['st_email'] = this.stEmail;
  //   data['st_password'] = this.stPassword;
  //   data['st_pass'] = this.stPass;
  //   data['st_mobile'] = this.stMobile;
  //   data['st_class'] = this.stClass;
  //   data['st_startdate'] = this.stStartdate;
  //   data['st_enddate'] = this.stEnddate;
  //   data['st_logged'] = this.stLogged;
  //   data['st_status'] = this.stStatus;
  //   return data;
  // }
}
