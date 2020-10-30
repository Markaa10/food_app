import 'package:flutter/material.dart';

import '../size_config.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;

  const AppButton({
    Key key,
    this.text,
    this.onPressed,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(125),
          vertical: getProportionateScreenHeight(18)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: color,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: getProportionateScreenWidth(14),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
