enum DocumentType {medicalFinding, laboratoryImaging, hemogram}

class Document {
  String? _documentname;
  DocumentType? _type;
  // uploaded document file

  Document(this._documentname, this._type);

  String get getDocumentname {
    return _documentname!;
  }

  set setDocumentname(String documentname) {
    _documentname = documentname;
  }

  DocumentType get getType {
    return _type!;
  }

  set setType(DocumentType type) {
    _type = type;
  }

}