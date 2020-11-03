import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_app/presentation/helpers/styles/app_colors.dart';
import 'package:food_app/presentation/routes/router.gr.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/size_config.dart';
import 'startup_content.dart';

class Body extends HookWidget {
  final List<Map<String, String>> startupData = [
    {
      "title": "Discover",
      "text": "Find food from any café or restaurants from your area",
      "image": "assets/images/discover.png",
      "buttonText": "",
      "pageNumber": "1 of 3",
    },
    {
      "title": "Choose",
      "text": "Order your favorite food",
      "image": "assets/images/choose.png",
      "buttonText": "",
      "pageNumber": "2 of 3",
    },
    {
      "title": "Fast Delivery",
      "text": "Get your food delivered at your doorstep fast and free of cost",
      "image": "assets/images/delivery.png",
      "buttonText": "Get Started",
      "pageNumber": "3 of 3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(0);
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.030),
        Align(
          alignment: Alignment.topRight,
          child: FlatButton(
            onPressed: () =>
                ExtendedNavigator.of(context).replace(Routes.loginPage),
            child: Text(
              'SKIP',
              style: GoogleFonts.montserrat(
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.w500,
                color: const Color(0xff8D8F91),
              ),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.117),
        Container(
          width: getProportionateScreenWidth(315),
          height: getProportionateScreenHeight(480),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(20)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000013),
                  blurRadius: getProportionateScreenWidth(90),
                  spreadRadius: getProportionateScreenWidth(30),
                )
              ]),
          child: PageView.builder(
            onPageChanged: (value) {
              currentPage.value = value;
            },
            itemCount: startupData.length,
            itemBuilder: (context, index) => StartupContent(
              title: startupData[index]["title"],
              image: startupData[index]["image"],
              text: startupData[index]['text'],
              buttonText: startupData[index]['buttonText'],
              pageNumber: startupData[index]['pageNumber'],
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.108),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            startupData.length,
            (index) => buildDot(index: index, currentPage: currentPage.value),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.052),
      ],
    );
  }

  AnimatedContainer buildDot({int index, int currentPage}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColors.kprimaryColor
            : AppColors.kprimaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
