import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPerfrencesServices {
  late SharedPreferences prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    var doesExist = await verifyToken();
    debugPrint(doesExist.toString());
  }

  Future<void> saveToken(String token) async {
    try {
      prefs.setString('token', token);
    } catch (e) {}
  }

  Future<void> deleteToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      prefs.remove('token');
    } catch (e) {}
  }

  Future<String?> retrieveToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? localToken = '';
    try {
      localToken = prefs.getString('token');
    } catch (e) {}
    return localToken;
  }

  Future<bool> verifyToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      var v = prefs.getString('token');
      return v != null && v.length > 0;
    } catch (e) {
      return false;
    }
  }
}
