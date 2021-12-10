import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_up/Pages/login/login_page.dart';
import 'package:sign_up/Pages/signup/components/background.dart';
import 'package:sign_up/Pages/signup/components/or_divider.dart';
import 'package:sign_up/Pages/signup/components/sociaL_icons.dart';
import 'package:sign_up/components/already_have_an_account_check.dart';
import 'package:sign_up/components/rounded_button.dart';
import 'package:sign_up/components/rounded_input_text.dart';
import 'package:sign_up/components/rounded_password_field.dart';
import 'package:sign_up/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    goLoginPage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const LoginPage()));
    }

    return SingleChildScrollView(
      child: Background(
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SIGNUP',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Lottie.asset('assets/animations/signup.json',
                  height: size.height * 0.35),
              RoundedInputText(
                hinText: 'Your-Email',
                icon: Icons.person,
                onChanged: (value) {},
              ),
              RoundedPasswordFiel(onChanged: (value) {}),
              RoundedButton(
                text: 'SIGNUP',
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white,
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    goLoginPage();
                  }),
              const OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(icon: 'assets/icons/facebook.svg', press: () {}),
                  SocialIcon(icon: 'assets/icons/twitter.svg', press: () {}),
                  SocialIcon(icon: 'assets/icons/google-plus.svg', press: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
