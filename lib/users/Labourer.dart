import 'package:cos_care_app/patient/Document.dart';
import 'package:cos_care_app/users/User.dart';
import 'package:cos_care_app/patient/LaboratoryOrder.dart';

class Labourer extends User {
  UserType _role = UserType.labourer;
  List<LaboratoryOrder>? _laboratoryOrders;

  Labourer() {
    _laboratoryOrders = [];
  }

  UserType get getRole {
    return _role;
  }

  set setRole(UserType role) {
    _role = role;
  }

  List<LaboratoryOrder> get getLaboratoryOrder {
    return _laboratoryOrders!;
  }

  void showOrders() {
    // runs through list of all laboratory orders for a labourer
    for(final order in _laboratoryOrders!) {
      // orders must be merged with UI
      print('Order: ${order.getPatient} Status: ${order.getStatus}'); 
    }
  
  }

  LaboratoryOrder? searchLaboratoryOrder(int id) {
    for(final order in _laboratoryOrders!) {
      if(order.getId == id) {
        return order;   
      }
    }
    return null;
  }

  void uploadDocument(LaboratoryOrder lab, documentname, DocumentType type) {

    try {
    if (searchLaboratoryOrder(lab.getId) != null) {
      Document document = Document(documentname, type);
     lab.setDocument = document;
    }
    else {
      throw Exception("Order with id ${lab.getId} is not found");
    }
    } catch (e) {
      print ("Failure: $e ");
    }
  }
}