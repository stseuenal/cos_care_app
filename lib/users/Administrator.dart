import 'package:cos_care_app/users/User.dart';
import 'package:cos_care_app/patient/Patient.dart';
import 'package:cos_care_app/patient/Room.dart';

class Administrator extends User {
  UserType _role = UserType.administrator;
  List<Patient>? _patientList;
  Map<DateTime, Patient>? _appointmentList;

  Administrator(String name) {
    this.name = name;
  }

  UserType get getUserType {
    return _role;
  }
  
  List<Patient> get getPatientList {
    return _patientList!;
  }
  
  
  void showAppointmentView() {
  
   List<MapEntry<DateTime, Patient>> appointments = _appointmentList!.entries.toList();

  // sort the list by values
  appointments.sort((a, b) => a.key.compareTo(b.key));

  // create a new map from the sorted list
  _appointmentList = Map.fromEntries(appointments);

  for (final a in _appointmentList!.entries) {
  DateTime date = a.key;
  Patient patient = a.value;

  // appointment dates with patient must be merged with UI
  print('Date: $date for Patient: ${patient.getName}');

  }

  }

  void showAdministrationView() {

    // calls window with account view

  }


  void showAccountView() {

    // calls window with account view

  }

  void addAppointment(DateTime date, Patient patient) {


  bool isAppoinment = false;
  for (var a in _appointmentList!.entries) {

  if (a.key == date) {
    isAppoinment = true;
    break;
  }
  }

  if (isAppoinment == false) {
    _appointmentList![date] = patient;

  }
  }


  void addPatient() {

    // button opens a new window to call recordPatient() - method

  }


  void recordPatient(String name, Room room) {

    bool isAvailable = true;
    for (final p in _patientList!) {
      if (p.getRoom == room.getRoomNumber && room.getIsAvailable == false) {
        isAvailable= false;
        break;
      }

      if (isAvailable == true) {
        Patient patient = Patient(name, room);
        _patientList?.add(patient);
      }
    }
  }

  void occupyRoom(Patient patient, Room room) {
    
    patient.setRoom = room;
    
    if(room.getIsAvailable == true) {
      room.setIsAvailable = false;
    }
  }

  void releasePatient(Patient patient) {

    // called by another (still unknown) method

    bool isReleased = false;
    for (final p in _patientList!) {
      if (p.getRoom == patient.getRoom) {
        _patientList?.remove(p);
        break;
      } 
    }
  }
}