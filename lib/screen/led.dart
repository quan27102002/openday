import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';

import '../widget/manage_led.dart';

class HomePage extends StatefulWidget {
  final String path1;
  final String path2;
  final String path3;
  const HomePage({
    super.key,
    required this.path1,
    required this.path2,
    required this.path3,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _initAlnan();
  }

  void _initAlnan() {
    AlanVoice.addButton(
        "12ac213e11efe0e0d181b40f0bad9f832e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
      switch (command.data['command']) {
        case "1":
          print('1');
          break;
        case " 2":
          print('2');
          break;
        case "3":
          print('3');
          break;
        case "4":
          print('4');
        case "5":
          break;
      }
      // Handle Alan AI commands here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Setting(
                path: widget.path1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Setting(
                path: widget.path2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Setting(
                path: widget.path3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
