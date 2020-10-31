import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_app/presentation/helpers/styles/app_textstyle.dart';
import 'package:food_app/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/size_config.dart';
import '../../helpers/styles/app_colors.dart';

class StartupContent extends StatelessWidget {
  const StartupContent({
    Key key,
    this.title,
    this.text,
    this.image,
    this.buttonText,
    this.pageNumber,
  }) : super(key: key);
  final String title, text, image, buttonText, pageNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: SizeConfig.screenHeight * 0.035),
        Image.asset(
          image,
          height: getProportionateScreenHeight(147),
          width: getProportionateScreenWidth(147),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.050),
        Text(
          title,
          style: AppTextstyle.ktitleText,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.027),
        Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextstyle.kbodyText,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.034),
        FlatButton(
          onPressed: () =>
              ExtendedNavigator.of(context).replace(Routes.loginPage),
          child: Text(
            buttonText,
            style: GoogleFonts.montserrat(
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.bold,
              color: AppColors.kprimaryColor,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.035),
        Align(
          alignment: Alignment.bottomRight,
          widthFactor: 9,
          child: Text(
            pageNumber,
            style: GoogleFonts.montserrat(
              fontSize: getProportionateScreenWidth(13),
              fontWeight: FontWeight.w500,
              color: const Color(0xff8D8F91),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.020),
      ],
    );
  }
}
