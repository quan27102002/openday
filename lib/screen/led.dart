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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Setting(
                path: widget.path1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Setting(
                path: widget.path2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
