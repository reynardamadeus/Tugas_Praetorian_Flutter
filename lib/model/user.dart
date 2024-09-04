import 'package:flutter/material.dart';

class UserModel with ChangeNotifier{
  String? _name;
  String? _email;
  String? _password;
  String? _phoneNumber;

  String? get name => _name;
  String? get email => _email;
  String? get password => _password;
  String? get phoneNumber => _phoneNumber;

  void updateName(String? inputName)
  {
      _name = inputName;
      notifyListeners();
  }

  void updateEmail(String? inputEmail)
  {
      _email = inputEmail;
      notifyListeners();
  }
  void updatePassword(String? inputPass)
  {
      _password = inputPass;
      notifyListeners();
  }
  void updatePhone(String? inputPhone)
  {
      _phoneNumber = inputPhone;
      notifyListeners();
  }
}