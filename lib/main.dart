import 'package:flutter/material.dart';
import 'package:flutter_application_1/body.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSreen(),
    );
  }
}

class HomeSreen extends StatelessWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Plantas'),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.blue,
        ),
      ),
    );
  }
}
