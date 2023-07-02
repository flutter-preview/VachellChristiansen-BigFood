import 'package:flutter/material.dart';
import 'user_provider.dart';


class UserProvider with ChangeNotifier {
  String _email = '';
  String _username = '';
  String _password = '';
  
  String get username => _username;
  String get email => _email;
  String get password => _password;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setUsername(String username){
    _username = username;
    notifyListeners();
  }

  void setPassword(String password){
    _password = password;
    notifyListeners();
  }
  
  String getUsername() {
    return _username;
  }
  String getEmail() {
    return _email;
  }

  String getPassword(){
    return _password;
  }
}
