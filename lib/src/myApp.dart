import 'package:flutter/material.dart';
import 'screens/login.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Log me',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log ME!!'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}
