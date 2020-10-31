import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_app/presentation/routes/router.gr.dart' as r;
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo',
      debugShowCheckedModeBanner: false,
      builder: ExtendedNavigator.builder<r.Router>(router: r.Router()),
      theme: ThemeData(
          // fontFamily: GoogleFonts,
          ),
    );
  }
}
