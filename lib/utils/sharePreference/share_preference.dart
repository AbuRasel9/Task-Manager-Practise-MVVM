import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceData {
  static String token="";
  //--------------> method for saving and getting token <--------------//

  Future<void> saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('auth_token', token);
  }

  Future<String?> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('auth_token');
  }

}