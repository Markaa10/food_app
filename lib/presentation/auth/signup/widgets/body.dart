import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/application/auth/auth_bloc.dart';
import 'package:food_app/application/auth/sign_up_form/sign_up_form_bloc.dart';

import '../../../helpers/size_config.dart';
import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/widgets/app_button.dart';
import '../../../helpers/widgets/app_textformfield.dart';
import '../../../routes/router.gr.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) => state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) => FlushbarHelper.createError(
            message: failure.map(
              cancelledByUser: (_) => 'Cancelled.',
              serverError: (_) => 'Server Error.',
              emailAlreadyInUse: (_) => 'Email Already In Use.',
              invalidEmailAndPasswordCombination: (_) =>
                  'Invalid Email and Password Combination.',
            ),
          ).show(context),
          (_) {
            ExtendedNavigator.of(context).replace(Routes.homePage);
            context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
          },
        ),
      ),
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            autovalidate: state.showErrorMessages,
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
                AppTextFormField(
                  hintText: 'Username',
                  prefixIcon: Icons.person_outline,
                  onChanged: (value) => context
                      .bloc<SignUpFormBloc>()
                      .add(SignUpFormEvent.usernameChanged(value)),
                  validator: (_) =>
                      context.bloc<SignUpFormBloc>().state.username.value.fold(
                            (f) => f.maybeMap(
                              nameTooShort: (_) => 'Username too short.',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.030),
                AppTextFormField(
                  hintText: 'E-mail',
                  prefixIcon: Icons.email_outlined,
                  onChanged: (value) => context
                      .bloc<SignUpFormBloc>()
                      .add(SignUpFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .bloc<SignUpFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.030),
                AppTextFormField(
                  hintText: 'Phone',
                  prefixIcon: Icons.phone_outlined,
                  onChanged: (value) => context
                      .bloc<SignUpFormBloc>()
                      .add(SignUpFormEvent.phoneChanged(value)),
                  validator: (_) =>
                      context.bloc<SignUpFormBloc>().state.phone.value.fold(
                            (f) => f.maybeMap(
                              nameTooShort: (_) => 'Invalid Phone number.',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.030),
                AppTextFormField(
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline,
                  onChanged: (value) => context
                      .bloc<SignUpFormBloc>()
                      .add(SignUpFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.bloc<SignUpFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Weak Password.',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.031),
                AppButton(
                  text: 'Sign Up',
                  color: AppColors.kprimaryColor,
                  textColor: Colors.white,
                  onPressed: () => context.bloc<SignUpFormBloc>().add(
                        const SignUpFormEvent
                            .signUpWithEmailAndPasswordPressed(),
                      ),
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
                    GestureDetector(
                      onTap: () => context.bloc<SignUpFormBloc>().add(
                            const SignUpFormEvent.signUpWithGooglePressed(),
                          ),
                      child: Image.asset('assets/images/google+.png'),
                    ),
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
                      onTap: () => ExtendedNavigator.of(context)
                          .replace(Routes.loginPage),
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
      },
    );
  }
}
