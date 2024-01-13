import 'package:check_mode_machine_test/components/date_picker.dart';
import 'package:check_mode_machine_test/controller/age_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Picker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => selectedDate(context),
              child: const Text('Pick Date'),
            ),
            const SizedBox(height: 30),
            Consumer<AgeController>(
              builder: (
                context,
                provider,
                child,
              ) =>
                  Text(
                provider.selectedDate != null
                    ? 'Selected Date: ${DateFormat('dd/MM/yyyy').format(
                        provider.selectedDate!,
                      )}'
                    : 'No Date Selected',
              ),
            ),
            const SizedBox(height: 30),
            Consumer<AgeController>(
              builder: (
                context,
                provider,
                child,
              ) =>
                  Text(
                provider.age != null ? 'Age : ${provider.age} Years' : 'Age : Not found',
              ),
            )
          ],
        ),
      ),
    );
  }
}
