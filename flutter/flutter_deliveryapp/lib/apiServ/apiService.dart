import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/config/config.dart';
import 'package:flutter_deliveryapp/model/usermodel.dart';
import 'package:flutter_deliveryapp/profile.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiServices {
  // ignore: sdk_version_async_exported_from_core
  BuildContext context;
  dynamic tock;
  Future<UserModel> login({String userName, String password}) async {
    UserModel _user = UserModel();
    print(userName);
    print(password);
    try {
      final res = await http.post(
        Uri.http(BASE_API_URL, 'api/delivery-app/login'),
        headers: HEADERS,
        body: {'username': userName, 'password': password},
      );
      print(res.body);
      Map<String, dynamic> data = jsonDecode(res.body);

      // print(data['data']);

      if (res.statusCode == 200 && data['status'] == true) {
        _user = UserModel.fromJson(data['data']);
        _user.tocken = data['token'];
        // print('sample');
        // print(_user.fullname);

        // print('this is');
        // print(tock);
      } else {
        throw Exception(data['msg']);
      }
      return _user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<ProfileData> profile() async {
    ProfileData _pro = ProfileData();
    try {
      final res = await http.post(
        Uri.http(BASE_API_URL, 'api/delivery-app/profile'),
        headers: HEADERSWITHTOCKEN,
        // body: {'username': userName, 'password': password},
      );
      print(res.body);
      print(UserData().user.tocken);
      // Map<String, dynamic> data = jsonDecode(res.body);

      // _pro = ProfileData.fromJson(prodata['data']);

      if (res.statusCode == 200) {
        return ProfileData.fromJson(jsonDecode(res.body));
        // print(_pro);
      }
      // else {
      //   throw Exception(data['msg']);
      // }
      // return _pro;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String> leave(
      {String startDate,
      String endDate,
      String leaveType,
      String noDays,
      String leaveReason}) async {
    // UserModel _user = UserModel();
    print('a p i');
    print(startDate);
    print(endDate);
    print(leaveType);
    print(noDays);
    print(leaveReason);
    try {
      final res = await http.post(
        Uri.http(BASE_API_URL, 'api/delivery-app/set-leave-application'),
        headers: HEADERSWITHTOCKEN,
        body: {
          'type': leaveType,
          'days': noDays,
          'reason': leaveReason,
          'from_date': startDate,
          'to_date': endDate
        },
      );
      print(res.body);
      Map<String, dynamic> data = jsonDecode(res.body);

      print(data['data']);

      if (res.statusCode == 200 && data['status'] == true) {
        print('done');
        return data['msg'];
      } else {
        throw Exception(data['msg']);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
