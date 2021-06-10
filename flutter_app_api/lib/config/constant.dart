import 'dart:convert';

const BASE_API_URL = '139.59.88.165';

final Map<String, String> HEADERS = {
  'X-API-KEY': 'vr@123',
  'authorization': 'Basic ' + base64Encode(utf8.encode('admin:1234')),
};
