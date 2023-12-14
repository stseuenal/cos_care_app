class Medication {
  String? _name;
  String? _substance;

  Medication(this._name, this._substance);

  String get getName {
    return _name!;
  }

  String get getSubstance {
    return _substance!;
  }


}
