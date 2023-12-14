import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:alan_voice/alan_voice.dart';

class Setting extends StatefulWidget {
  final String path;

  const Setting({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  late final DatabaseReference _databaseReference;
  late final DatabaseReference _databaseReference1;
  final ValueNotifier<int> selectedLevel = ValueNotifier<int>(1);
  final ValueNotifier<bool> isSwitchOn = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _databaseReference =
        FirebaseDatabase.instance.reference().child("${widget.path}/status");
    _databaseReference1 =
        FirebaseDatabase.instance.reference().child("${widget.path}/value");
    _setupStream();
  }

  void _setupStream() {
    _databaseReference.onValue.listen((event) {
      final dynamic data = event.snapshot.value;
      if (data != null && data is bool) {
        isSwitchOn.value = data;
      }
    });

    _databaseReference1.onValue.listen((event) {
      final dynamic data = event.snapshot.value;
      if (data != null && data is int) {
        selectedLevel.value = data;
      }
    });
  }

  void _toggleSwitch() {
    _databaseReference.set(!isSwitchOn.value);
  }

  void _showLevelDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
            title: Text('Chọn mức'),
            content: Column(
              children: [
                _buildLevelButton(1),
                _buildLevelButton(2),
                _buildLevelButton(3),
                _buildLevelButton(4),
                _buildLevelButton(5),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLevelButton(int level) {
    return ElevatedButton(
      onPressed: () {
        _databaseReference1.set(level);
        Navigator.pop(context); // Close the dialog
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedLevel.value == level
            ? Colors.green // Highlight the selected level
            : null,
      ),
      child: Text('Level $level'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onLongPress: _showLevelDialog,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: isSwitchOn,
                builder: (context, value, child) {
                  return ElevatedButton(
                    onPressed: _toggleSwitch,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: value ? Colors.green : Colors.red,
                      minimumSize: const Size(80, 80),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      value ? 'ON' : 'OFF',
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
