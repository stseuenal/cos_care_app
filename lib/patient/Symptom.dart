class Symptom {
  String? _note;
  String? _frequency;

  Symptom(this._note, this._frequency);

  String get getNote {
    return _note!;
  }

  set setNote(String note) {
    _note = note;
  }

  String get getFrequency {
    return _frequency!;
  }

  set setFrequency(String frequency) {
    _frequency = frequency;
  }

}


