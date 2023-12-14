import 'package:cos_care_app/patient/LaboratoryOrder.dart';
import 'package:cos_care_app/patient/Medication.dart';
import 'package:cos_care_app/patient/Symptom.dart';

class Visite {
  static int? _id;
  DateTime? _date;
  List<Symptom> _symptoms = [];
  List<String>? _diagnoses;
  List<LaboratoryOrder>? _laboratoryOrders;
  Medication? _medication;

  Visite() {
    _date = DateTime.now();
    _diagnoses = [];
    _laboratoryOrders = [];
  }

  int get getId {
    return _id!;
  }

  set setId(int id) {
    _id = id;
  }

  DateTime get getDate {
    return _date!;
  }

  set setDate(DateTime date) {
    _date = date;
  }

    List<Symptom> get getSymtoms {
    return _symptoms;
  }

    List<String> get getDiagnoses{
    return _diagnoses!;
  }

    List<LaboratoryOrder> get getLaboratoryOrders {
    return _laboratoryOrders!;
  }

  Medication get getMedication {
    return _medication!;
  }

  set setMedication(Medication medication) {
    _medication = medication;
  }

  void saveVisit() {

  }

  void addSymptom(String note, String frequency) {
    Symptom symptom = Symptom(note, frequency);
    _symptoms.add(symptom);
  }

  void addMedication(String name, String substance) {
    Medication medication = Medication(name, substance);
    _medication = medication;
  }

  

}