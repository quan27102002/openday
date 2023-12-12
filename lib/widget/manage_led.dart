import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Setting extends StatefulWidget {
  final String path; // Make 'path' final
  const Setting({
    Key? key,
    required this.path,
  }) : super(key: key); // Fix the constructor

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  late final DatabaseReference _databaseReference; // Make it late final

  late bool isSwitchOn;

  @override
  void initState() {
    super.initState();
    _databaseReference = FirebaseDatabase.instance
        .reference()
        .child(widget.path); // Initialize _databaseReference in initState
    isSwitchOn = false; // Initialize with a default value
    _setupStream();
  }

  void _setupStream() {
    _databaseReference.onValue.listen((event) {
      final dynamic data = event.snapshot.value;
      if (data != null && data is bool) {
        setState(() {
          isSwitchOn = data;
        });
      }
    });
  }

  void _toggleSwitch() {
    _databaseReference.set(!isSwitchOn); // Toggle the value in Firebase
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _toggleSwitch,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSwitchOn ? Colors.green : Colors.red,
          padding: const EdgeInsets.all(20.0),
        ),
        child: Text(
          isSwitchOn ? 'ON' : 'OFF',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
