import 'package:flutter/material.dart';

import '../demo.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo',
      debugShowCheckedModeBanner: false,
      home: Demo(),
      theme: ThemeData(
        fontFamily: 'Gilroy',
      ),
    );
  }
}
