class Room {
  int? _roomNumber;
  bool? _isAvailable;

  Room(this._roomNumber) {
    _isAvailable = true;
  }

  int get getRoomNumber {
    return _roomNumber!;
  }

  set setRoomNumber(int roomNumber) {
    _roomNumber = roomNumber;
  }

  bool get getIsAvailable {
    return _isAvailable!;
  }

  set setIsAvailable(bool isAvailable) {
    _isAvailable = isAvailable;
  }
  
}