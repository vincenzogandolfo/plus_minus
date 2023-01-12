import 'package:flutter/material.dart';
import '../components/title_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void minus() {
    counter--;
  }

  void plus() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Press - o + to move a Counter',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      minus();
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    color: Colors.redAccent,
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(width: 50),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      plus();
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    color: Colors.greenAccent,
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
