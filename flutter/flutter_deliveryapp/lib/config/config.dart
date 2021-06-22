import 'dart:convert';

import 'package:flutter_deliveryapp/model/usermodel.dart';

const BASE_API_URL = 'dailygroc.webqua.in';

final Map<String, String> HEADERS = {
  'Accept': 'application/json',
  'authorization': 'No'
  // 'Basic ' + base64Encode(utf8.encode('admin:1234')),
};
final Map<String, String> HEADERSWITHTOCKEN = {
  'Accept': 'application/json',
  'authorization': 'Bearer ${UserData().user.token}'
  // 'Basic ' + base64Encode(utf8.encode('admin:1234')),
};
