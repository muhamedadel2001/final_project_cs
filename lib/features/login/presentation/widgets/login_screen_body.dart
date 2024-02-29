import 'package:finalproject/features/login/presentation/widgets/signin_button_with_google.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/core/utilities/screens.dart' as screens;

import '../../../../core/utilities/fonts.dart';
import '../../../../core/utilities/responsive.dart';
import '../../../../core/widgets/custom_primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/hint_actio_widget.dart';
import 'divider_with_text.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Hey there,",
                style: MyFonts.textStyle16,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(5),
              ),
              const Text(
                "Welcome Back",
                style: MyFonts.textStyle20,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(30),
              ),
              const CustomTextFormField(
                hintText: "Email",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(15),
              ),
              const CustomTextFormField(
                hintText: "Password",
                suffixIcon: Icons.visibility_off_outlined,
                prefixIcon: Icons.lock_open_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(10),
              ),
              InkWell(
                  onTap: () => Navigator.pushNamed(context, screens.passMethodScreen),
                  child: const Text(
                    "Forgot your password?",
                    style: MyFonts.textStyleForm12,
                  )),
              SizedBox(
                height: ResponsiveCalc().heightRatio(10),
              ),
              SizedBox(
                  width: ResponsiveCalc().widthRatio(291),
                  height: ResponsiveCalc().heightRatio(279),
                  child: Image.asset("assets/images/Illustartion.png")),
              const SizedBox(height: 1),
              PrimaryButton(
                text: "Login",
                pressAction: () {
                  //still uncompleted
                  //.................
                  // Navigator.of(context).pushReplacementNamed('');
                },
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(10),
              ),
              const DividerWithText(text: "Or"),
              SizedBox(
                height: ResponsiveCalc().heightRatio(10),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const SignInButton(
                    imagePath:
                        "assets/images/google-logo-png-suite-everything-you-need-know-about-google-newest-0 2.png"),
                SizedBox(
                  width: ResponsiveCalc().widthRatio(30),
                ),
                const SignInButton(imagePath: "assets/images/facebook 1.png"),
              ]),
              SizedBox(
                height: ResponsiveCalc().heightRatio(20),
              ),
              HintActionLine(
                  hintText: "Don't have an account?",
                  buttonText: "Register Now",
                  lineAction: () => Navigator.of(context)
                      .pushReplacementNamed(screens.registerScreen)),
            ],
          ),
        ),
      ),
    );
  }
}
