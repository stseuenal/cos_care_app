import 'dart:io';

class Account {
  String? _name;
  String? _password;

  Account(this._name, this._password);

  String get getName {
    return _name!;
  }

  set setName(String name) {
    _name = name;
  }

    String get getPassword {
    return _name!;
  }

  set setPassword(String password) {
    _password = password;
  }

  void defineLoginData() {
    stdout.write('enter your password: ');
    String? name = stdin.readLineSync();
    _name = name;

    stdout.write('enter your password: ');
    String? password = stdin.readLineSync();
    _password = password;
  }

  bool login() {
    print('enter your name: ');
    String? name = stdin.readLineSync();

    print('enter your password: ');
    String? password = stdin.readLineSync();
    
    if(name == _name && password == _password) {
      print('login successful');
      return true;
    }
    else {
      print('login unsuccessful');
      return false;
    }
    
  }
}