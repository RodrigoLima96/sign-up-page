import 'package:flutter/material.dart';
import 'package:sign_up/components/text_field_container.dart';

import '../constants.dart';

class RoundPasswordFiel extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundPasswordFiel({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return TextFieldContainer(
        child: Container(
      alignment: Alignment.center,
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: size.height * 0.017),
          border: InputBorder.none,
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
          hintText: 'Password',
        ),
      ),
    ));
  }
}
