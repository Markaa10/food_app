import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/presentation/helpers/size_config.dart';
import 'package:food_app/presentation/helpers/styles/app_colors.dart';
import 'package:food_app/presentation/helpers/widgets/app_button.dart';
import 'package:food_app/presentation/helpers/widgets/app_textformfield.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.030),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => ExtendedNavigator.of(context).pop(),
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: getProportionateScreenWidth(30),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.055),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.055),
              SvgPicture.asset(
                'assets/images/forgotpassword.png',
                width: 315,
                height: 295,
                fit: BoxFit.cover,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.060),
              Text(
                'Enter your phone number',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff7D7D7D),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.0255),
              const AppTextFormField(
                hintText: 'Phone',
                prefixIcon: Icons.phone_outlined,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.045),
              AppButton(
                text: 'Contiue',
                textColor: Colors.white,
                color: AppColors.kprimaryColor,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
