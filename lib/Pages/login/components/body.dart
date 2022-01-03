import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_up/Pages/login/components/background.dart';
import 'package:sign_up/Pages/signup/sign_up.dart';
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

    goSignUpPage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const SignUpPage()));
    }

    return SingleChildScrollView(
      reverse: true,
      child: Background(
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Lottie.asset('assets/animations/login.json',
                width: size.height * 0.4),
            RoundedInputText(
              hinText: 'Your Email',
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordFiel(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
              color: kPrimaryColor,
              textColor: Colors.black,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                goSignUpPage();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
