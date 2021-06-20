import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/config/config.dart';
import 'package:flutter_deliveryapp/model/usermodel.dart';
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
      print('done');
      print(res.body);
      Map<String, dynamic> data = jsonDecode(res.body);
      // Map<String, dynamic> tock = jsonDecode(res.body);
      print(data['abc']);
      print(data['token']);

      print('this is');
      print(tock);
      if (res.statusCode == 200 && data['status'] == true) {
        _user = UserModel.fromJson(data['data'][0]);
        tock = UserModel.fromJson(data['token']);
        print('this is');
        print(tock);
      } else {
        throw Exception(data['msg']);
      }
      return _user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
