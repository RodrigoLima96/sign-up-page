import 'package:flutter/material.dart';
import 'package:sign_up/Pages/login/login_page.dart';
import 'package:sign_up/Pages/welcome/components/background.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_up/components/rounded_button.dart';
import 'package:sign_up/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WELCOME TO AVA',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          Lottie.asset(
            'assets/animations/welcome.json',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            color: kPrimaryColor,
            textColor: Colors.white,
          ),
          RoundedButton(
            text: 'SIGNUP',
            press: () {},
            color: kPrimaryLightColor,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
