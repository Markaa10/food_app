import 'package:flutter/material.dart';
import 'package:food_app/presentation/helpers/size_config.dart';

import 'widgets/body.dart';

class StartupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
