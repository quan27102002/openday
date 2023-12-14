import 'package:alan_voice/alan_voice.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../widget/manage_led.dart';

class HomePage extends StatefulWidget {
  final String path1;
  final String path2;
  final String path3;
  final String fire;

  const HomePage({
    Key? key,
    required this.path1,
    required this.path2,
    required this.path3,
    required this.fire,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final DatabaseReference _databaseReference1;

  int? statusFire;

  @override
  void initState() {
    super.initState();
    _databaseReference1 = FirebaseDatabase.instance.ref().child(widget.fire);
    _initAlnan();
    _setupStream();
  }

  void _setupStream() {
    _databaseReference1.onValue.listen((event) {
      final dynamic data = event.snapshot.value;

      if (data != null) {
        setState(() {
          statusFire = data;
        });
        if (data == 0) {
          _showFire();
          print(data);
        }
      }
    });
  }

  Future<void> _sound() async {
    Soundpool pool = Soundpool(streamType: StreamType.notification);

    int soundId = await rootBundle
        .load("assets/music/coi.mp3")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });

    int streamId = await pool.play(soundId);
  }

  void _showFire() {
    _sound();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thông báo'),
          content: const Text('Phát hiện có cháy!!!'),
          actions: [
            TextButton(
              child: const Text('Đóng'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _initAlnan() {
    AlanVoice.addButton(
      "12ac213e11efe0e0d181b40f0bad9f832e956eca572e1d8b807a3e2338fdd0dc/stage",
      buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT,
    );
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
      switch (command.data['command']) {
        case "1":
          print('1');
          break;
        case "2":
          print('2');
          break;
        case "3":
          print('3');
          break;
        case "4":
          print('4');
          break;
        case "5":
          // Do something for command 5
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
