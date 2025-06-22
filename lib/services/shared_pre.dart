import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userMailKey = "USERMAILKEY";
  static String userPicKey = "USERPICKEY";

  Future<bool> saveUserId(String getUserId) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.setString(userIdKey, getUserId);
  }
  Future<bool> saveUserEmail(String getUserEmail) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.setString(userMailKey, getUserEmail);
  }
  Future<bool> saveUserName(String getUserName) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.setString(userNameKey, getUserName);
  }
  Future<bool> saveUserPic(String getUserPic) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.setString(userPicKey, getUserPic);
  }

  Future<String?> getUserId() async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.getString(userIdKey);
  }
  Future<String?> getUserName() async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.getString(userNameKey);
  }
  Future<String?> getUserEmail() async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.getString(userMailKey);
  }
  Future<String?> getUserPic() async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    return preference.getString(userPicKey);
  }
}