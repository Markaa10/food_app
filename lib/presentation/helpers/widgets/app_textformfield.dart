import 'package:flutter/material.dart';

import '../size_config.dart';

class AppTextFormField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool obscureText;
  final Function validator;
  final Function onChanged;

  const AppTextFormField({
    Key key,
    this.prefixIcon,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(315),
      height: getProportionateScreenHeight(55),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(17),
            vertical: getProportionateScreenHeight(17),
          ),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(17)),
            child: Icon(
              prefixIcon,
              size: getProportionateScreenWidth(20),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
