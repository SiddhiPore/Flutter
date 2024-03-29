import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Fullter Learning'),
      ),
      body:

      Column(
        children: [
          Container(
            // Container outside the Row
            width: 100,
            height: 150,
            color: Colors.yellow,
            margin: EdgeInsets.all(30),
            child: Center(
              child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Outside Container', style: TextStyle(color: Colors.black),),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 100,
                color: Colors.blueGrey,
              ),
              Container(
                width: 80,
                height: 100,
                color: Colors.orange,
              ),
              Expanded(
                child: Container(
                  width: 80,
                  height: 100,
                  color: Colors.tealAccent,
                ),
              ),
              Expanded(
                child: Container(
                  width: 80,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 80,
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
        ],
      )




      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
