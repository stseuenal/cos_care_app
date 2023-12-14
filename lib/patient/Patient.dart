import 'package:cos_care_app/users/User.dart';
import 'package:cos_care_app/patient/Room.dart';

enum HealthStatus {acute, chronic, healed}

class Patient {
  String? _name;
  Room? _room;
  UserType _role = UserType.patient;
  HealthStatus? _status;

  Patient(this._name, this._room);
  
  String get getName {
    return _name!;
  }

  set setName(String name) {
    _name = name;
  }

  Room get getRoom {
    return _room!;
  }

  set setRoom(Room room) {
    _room = room;
  }

  UserType get getRole {
    return _role;
  }

  set setRole(UserType role) {
    _role = role;
  }

  HealthStatus get getStatus {
    return _status!;
  }

  set setStatus(HealthStatus status) {
    _status = status;
  }

}