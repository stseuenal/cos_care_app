import 'package:cos_care_app/Account.dart';

enum UserType {doctor, labourer, administrator, patient}

abstract class User {
  String? name;
  Account account = Account("", "");
}