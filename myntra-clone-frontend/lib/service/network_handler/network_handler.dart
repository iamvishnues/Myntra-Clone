import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NetworkHandler {
  static final Client = http.Client();
  static final storage = FlutterSecureStorage();
  static Future<String> post(var body, String endpoint) async {
    var response = await Client.post(buildUrl(endpoint),
        body: body, headers: {"Content-type": "application/json"});
    return response.body;
  }

  static buildUrl(String endpoint) {
    String host = "http://192.168.0.114:5000/";
    final apiPath = host + endpoint;
    return Uri.parse(apiPath);
  }

  static void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: "token");
  }
}
