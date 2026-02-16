import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }
  void reset(){
    setState(() {
      count=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Counter App")),
        body: Center(
          child: CounterWidget(
            count: count,
            onIncrement: increment,
            onDecrement: decrement,
            onReset: reset,
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onReset;

  const CounterWidget({
    super.key,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: onDecrement,
          child: const Text("-"),
        ),
        const SizedBox(height: 20),
        Text(
          "$count",
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: onIncrement,
          child: const Text("+"),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: onReset,
          child: const Text("Reset"),
        ),



      ],
    );
  }
}