import 'package:finalproject/features/sign_up/presentation/widget/privacy_policy_check_box.dart';
import 'package:flutter/material.dart';
import '../../../../core/utilities/fonts.dart';
import '../../../../core/utilities/responsive.dart';
import '../../../../core/widgets/custom_primary_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/hint_actio_widget.dart';
import '../../../login/presentation/widgets/divider_with_text.dart';
import '../../../login/presentation/widgets/signin_button_with_google.dart';
import 'package:finalproject/core/utilities/screens.dart' as screens;

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({Key? key}) : super(key: key);

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
                "Create an Account",
                style: MyFonts.textStyle20,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(30),
              ),
              const CustomTextFormField(
                hintText: "First Name",
                prefixIcon: Icons.person_3_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(14),
              ),
              const CustomTextFormField(
                hintText: "Last Name",
                prefixIcon: Icons.person_3_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(14),
              ),
              const CustomTextFormField(
                hintText: "Email",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(14),
              ),
              const CustomTextFormField(
                hintText: "Phone Number",
                prefixIcon: Icons.phone_in_talk_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(14),
              ),
              const CustomTextFormField(
                hintText: "Password",
                suffixIcon: Icons.visibility_off_outlined,
                prefixIcon: Icons.lock_open_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(14),
              ),
              const CustomTextFormField(
                hintText: "Confirm Password",
                suffixIcon: Icons.visibility_off_outlined,
                prefixIcon: Icons.lock_open_outlined,
              ),
              SizedBox(
                height: ResponsiveCalc().heightRatio(29),
              ),
              const Center(child: PrivacyPolicyCheckbox()),
              SizedBox(
                height: ResponsiveCalc().heightRatio(14),
              ),
              PrimaryButton(
                text: "Register",
                pressAction: () {
                  // still uncompleted
                  //.............
                  Navigator.of(context).pushNamed(screens.verMethodScreen);
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
                height: ResponsiveCalc().heightRatio(30),
              ),
              HintActionLine(
                hintText: "Already have an account?",
                buttonText: "Login",
                lineAction: () => Navigator.of(context)
                    .pushReplacementNamed(screens.loginScreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
