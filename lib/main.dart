import 'package:api_test/dialog_window.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ApiTestApp());
}

class ApiTestApp extends StatelessWidget {
  const ApiTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Test App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('API TEST'),
        ),
        body: const DialogWindow(),
      ),
    );
  }
}
