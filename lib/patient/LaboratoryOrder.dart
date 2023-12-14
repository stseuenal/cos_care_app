import 'package:cos_care_app/patient/Patient.dart';
import 'package:cos_care_app/patient/Document.dart';

enum Status {toDo, inProgres, done}

class LaboratoryOrder {
  static int? _id;
  Patient? _patient;
  Document? _document;
  Status? _status;

  LaboratoryOrder() {
    _status = Status.toDo;
  }

  int get getId {
    return _id!;
  }

  set setId(int id) {
    _id = id;
  }

  Patient get getPatient {
    return _patient!;
  }

  set setPatient(Patient patient) {
    _patient = patient;
  }

  Document get getDocument {
    return _document!;
  }

  set setDocument(Document document) {
    _document = document;
  }

  Status get getStatus {
    return _status!;
  }

  set setStatus(Status status) {
    _status = status;
  }

}