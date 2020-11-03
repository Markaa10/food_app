import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_app/application/auth/auth_bloc.dart';
import 'package:food_app/application/auth/sign_in_form/sign_in_form_bloc.dart';

import '../../../helpers/size_config.dart';
import '../../../helpers/styles/app_colors.dart';
import '../../../helpers/widgets/app_button.dart';
import '../../../helpers/widgets/app_textformfield.dart';
import '../../../routes/router.gr.dart';

class Body extends HookWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remember = useState(false);

    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.145),
                Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.050),
                AppTextFormField(
                  hintText: 'E-mail',
                  prefixIcon: Icons.email_outlined,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
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
                  hintText: 'Password',
                  prefixIcon: Icons.lock_outline,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.bloc<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.020),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildRemembermeGestureDetector(remember),
                    GestureDetector(
                      onTap: () => ExtendedNavigator.of(context)
                          .push(Routes.forgotPassword),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(13),
                          color: AppColors.kprimaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.051),
                AppButton(
                  text: 'Sign In',
                  color: AppColors.kprimaryColor,
                  textColor: Colors.white,
                  onPressed: () => context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent
                            .signInWithEmailAndPasswordPressed(),
                      ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.050),
                Align(
                  child: Text(
                    'or login with',
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
                      onTap: () => context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed(),
                          ),
                      child: Image.asset('assets/images/google+.png'),
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.049),
                    Image.asset('assets/images/twitter.png'),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.089),
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
                          ExtendedNavigator.of(context).push(Routes.signupPage),
                      child: Text(
                        'SIGN UP',
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

  GestureDetector _buildRemembermeGestureDetector(
      ValueNotifier<bool> remember) {
    return GestureDetector(
      onTap: () {
        remember.value = !remember.value;
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (remember.value == false)
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: getProportionateScreenWidth(18),
                  height: getProportionateScreenHeight(18),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(50)),
                    color: AppColors.kprimaryColor,
                  ),
                ),
                Center(
                  child: Container(
                    width: getProportionateScreenWidth(12),
                    height: getProportionateScreenHeight(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(50)),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          else
            Icon(
              Icons.circle,
              color: AppColors.kprimaryColor,
              size: getProportionateScreenWidth(18),
            ),
          SizedBox(width: SizeConfig.screenWidth * 0.010),
          Text(
            'Remember me',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(13),
              fontWeight: FontWeight.normal,
              color: const Color(0xff665566),
            ),
          ),
        ],
      ),
    );
  }
}
