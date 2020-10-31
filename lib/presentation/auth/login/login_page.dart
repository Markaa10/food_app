import 'package:flutter/material.dart';

import '../../helpers/size_config.dart';
import 'widgets/body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: Body(),
      ),
    );
  }
}
