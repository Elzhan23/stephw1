import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<StatefulWidget> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Counter')),
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Container(
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            _count--;
                          });
                        },
                      ),
                      Text('$_count', style: TextStyle(fontSize: 25)),

                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            _count++;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
