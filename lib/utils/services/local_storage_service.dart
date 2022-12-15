import 'package:shared_preferences/shared_preferences.dart';

///Contains service to ge data from local device
class LocalStorageService {
  static final LocalStorageService _localStorageService =
      LocalStorageService._internal();

  factory LocalStorageService() {
    return _localStorageService;
  }

  LocalStorageService._internal();

  // SharedPreferences can be used to store data locally
  // Sqflite too can be used to store complex data

  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') ?? '';
  }
}
