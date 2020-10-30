import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/presentation/helpers/size_config.dart';
import 'package:food_app/presentation/helpers/widgets/app_button.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: AppButton(
          onPressed: () {},
          text: 'Demo',
          color: Colors.amber,
        ),
      ),
    );
  }
}
