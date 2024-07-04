import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/themes/colors.dart';
import 'package:doc_doc/core/themes/styles.dart';
import 'package:doc_doc/core/widgets/app_text_button.dart';
import 'package:doc_doc/core/widgets/app_text_form_field.dart';
import 'package:doc_doc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      verticalSpace(18.0),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          icon: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: ColorsManager.mainBlue,
                          ),
                        ),
                      ),
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
                        onPressed: () {},
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                      ),
                      verticalSpace(16.0),
                      const TermsAndConditionsText(),
                      verticalSpace(60.0),
                      const DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
