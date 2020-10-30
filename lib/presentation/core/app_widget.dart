import 'package:flutter/material.dart';
import 'package:food_app/presentation/startup/startup_page.dart';

import '../demo.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo',
      debugShowCheckedModeBanner: false,
      home: StartupPage(),
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
    );
  }
}
