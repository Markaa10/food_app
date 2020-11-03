import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:food_app/injection.dart';

import '../../helpers/size_config.dart';
import 'widgets/body.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: const Body(),
        ),
      ),
    );
  }
}
