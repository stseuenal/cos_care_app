import "package:cos_care_app/users/User.dart";

class Doctor extends User {
  UserType role = UserType.doctor;

  Doctor(String name) {
    this.name = name;
    print(this.name);
  }
}