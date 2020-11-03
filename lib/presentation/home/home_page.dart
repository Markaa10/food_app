import 'package:flutter/material.dart';
import 'package:food_app/presentation/helpers/size_config.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          'Godavari',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            fontWeight: FontWeight.w600,
            color: const Color(0xff5B5B5C).withOpacity(0.8),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(),
    );
  }
}
