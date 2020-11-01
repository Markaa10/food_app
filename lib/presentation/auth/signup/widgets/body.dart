import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_app/presentation/helpers/styles/app_colors.dart';
import 'package:food_app/presentation/helpers/widgets/app_button.dart';
import 'package:food_app/presentation/helpers/widgets/app_textformfield.dart';
import 'package:food_app/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../helpers/size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.055),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(25),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.047),
            const AppTextFormField(
              hintText: 'Username',
              prefixIcon: Icons.person_outline,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.030),
            const AppTextFormField(
              hintText: 'E-mail',
              prefixIcon: Icons.email_outlined,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.030),
            const AppTextFormField(
              hintText: 'Phone',
              prefixIcon: Icons.phone_outlined,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.030),
            const AppTextFormField(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.031),
            AppButton(
              text: 'Sign Up',
              color: AppColors.kprimaryColor,
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.050),
            Align(
              child: Text(
                'or sign up with',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: const Color(0xff665566),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.050),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/facebook.png'),
                SizedBox(width: SizeConfig.screenWidth * 0.049),
                Image.asset('assets/images/google+.png'),
                SizedBox(width: SizeConfig.screenWidth * 0.049),
                Image.asset('assets/images/twitter.png'),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.068),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: const Color(0xff665566),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      ExtendedNavigator.of(context).replace(Routes.loginPage),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      color: AppColors.kprimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.030),
          ],
        ),
      ),
    );
  }
}
