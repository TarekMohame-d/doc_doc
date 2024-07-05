import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc_doc/features/login/ui/widgets/email_and_password.dart';
import 'package:doc_doc/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0.w,
            vertical: 30.0.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8.0),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36.0),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24.0),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40.0),
                    AppTextButton(
                      onPressed: () {
                        validateThenLogin(context);
                      },
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpace(16.0),
                    const TermsAndConditionsText(),
                    verticalSpace(60.0),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ));
    }
  }
}
