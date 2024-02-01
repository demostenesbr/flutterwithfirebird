import 'package:flutter/material.dart';

import 'package:flutterwitifirebird/config/screens/api.dart';

void main() {
  runApp(const MyApp(
    title: '',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required String title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MyApi(
        title: '',
      ),
    );
  }
}
