import 'dart:convert';

import 'package:flutter_app_api/config/constant.dart';
import 'package:flutter_app_api/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  // ignore: sdk_version_async_exported_from_core
  Future<UserModel> login({String userName, String password}) async {
    UserModel _user = UserModel();
    try {
      final res = await http.post(
        Uri.http(BASE_API_URL, 'appdemo/rest/api/User/login'),
        headers: HEADERS,
        body: {'username': userName, 'password': password},
      );
      Map<String, dynamic> data = jsonDecode(res.body);

      if (res.statusCode == 200 && data['status'] == true) {
        _user = UserModel.fromJson(data['data'][0]);
      } else {
        throw Exception(data['message']);
      }
      return _user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UserModel> signUp({String userName, String password}) async {
    UserModel _user = UserModel();
    try {
      final res = await http.post(
        Uri.http(BASE_API_URL, 'appdemo/rest/api/User/singup'),
        headers: HEADERS,
        body: {'username': userName, 'password': password},
      );
      Map<String, dynamic> data = jsonDecode(res.body);

      if (res.statusCode == 200 && data['status'] == true) {
        _user = UserModel.fromJson(data['data'][0]);
      } else {
        throw Exception(data['message']);
      }
      return _user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UserModel> getData() async {
    UserModel _user = UserModel();
    try {
      final res = await http.get(
        //  
        Uri.http(BASE_API_URL, 'appdemo/rest/api/User/'),
        headers: HEADERS,
      );
      Map<String, dynamic> data = jsonDecode(res.body);

      if (res.statusCode == 200 && data['status'] == true) {
        _user = UserModel.fromJson(data['data'][0]);
      } else {
        throw Exception(data['message']);
      }
      return _user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
