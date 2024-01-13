import 'package:check_mode_machine_test/controller/age_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void selectedDate(BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context,
    firstDate: DateTime(1990),
    lastDate: DateTime.now(),
  );

  if (picked != null) {
    // ignore: use_build_context_synchronously
    Provider.of<AgeController>(context,listen: false).selectedDate = picked;
  }
}
