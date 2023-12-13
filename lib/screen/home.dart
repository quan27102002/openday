import 'package:flutter/material.dart';
import 'package:openday/screen/led.dart';

class Infomation extends StatefulWidget {
  const Infomation({super.key});
  @override
  State<Infomation> createState() => _InfomationState();
}

class _InfomationState extends State<Infomation> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 169, 212, 218),
      minimumSize: const Size(120, 100),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý trạng thái'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '1/led1',
                          path2: '1/led2',
                          path3: '1/led3',
                        ),
                      ),
                    );
                  },
                  child: const Text('Vị trí 1'),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '2/led1',
                          path2: '2/led2',
                          path3: '2/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 2 được nhấn
                  },
                  child: const Text('Vị trí 2'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '3/led1',
                          path2: '3/led2',
                          path3: '3/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 3 được nhấn
                  },
                  child: const Text('Vị trí 3'),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '4/led1',
                          path2: '4/led2',
                          path3: '4/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 4 được nhấn
                  },
                  child: const Text('Vị trí 4'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '5/led1',
                          path2: '5/led2',
                          path3: '5/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 5 được nhấn
                  },
                  child: const Text('Vị trí 5'),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '6/led1',
                          path2: '6/led2',
                          path3: '6/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 6 được nhấn
                  },
                  child: const Text('Vị trí 6'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '7/led1',
                          path2: '7/led2',
                          path3: '7/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 5 được nhấn
                  },
                  child: const Text('Vị trí 7'),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '8/led1',
                          path2: '8/led2',
                          path3: '8/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 6 được nhấn
                  },
                  child: const Text('Vị trí 8'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '9/led1',
                          path2: '9/led2',
                          path3: '9/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 5 được nhấn
                  },
                  child: const Text('Vị trí 9'),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                          path1: '10/led1',
                          path2: '10/led2',
                          path3: '10/led3',
                        ),
                      ),
                    );
                    // Xử lý khi button 6 được nhấn
                  },
                  child: const Text('Vị trí 10'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
