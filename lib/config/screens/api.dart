import 'package:flutter/material.dart';
import 'package:flutterwitifirebird/config/models/model_api.dart';
import 'package:flutterwitifirebird/config/services/api_service.dart';

void main() {
  runApp(const MyApi(
    title: '',
  ));
}

class MyApi extends StatelessWidget {
  const MyApi({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter API Integration'),
        ),
        body: FutureBuilder<Post>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Text('Title: ${snapshot.data!.title}');
            }
          },
        ),
      ),
    );
  }
}
