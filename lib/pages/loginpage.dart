import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
    );
  }
}
