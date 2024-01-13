import 'package:flutter/material.dart';

class AgeController extends ChangeNotifier {
  DateTime? _selectedDate;

  int? _age;

  int? get age => _age;

  DateTime? get selectedDate => _selectedDate;

  set selectedDate(DateTime? dateTime) {
    _selectedDate = dateTime;
    calculateAge();
    notifyListeners();
  }

  calculateAge() {
    if (_selectedDate != null) {
      DateTime now = DateTime.now();

      _age = now.year - _selectedDate!.year;
    }
  }
}
