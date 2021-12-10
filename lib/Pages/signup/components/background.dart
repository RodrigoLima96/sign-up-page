import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: size.height * 0.15,
              child: Image.asset('assets/images/signup_top.png'),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              width: size.height * 0.1,
              child: Image.asset('assets/images/main_bottom.png'),
            ),
            child,
          ],
        ));
  }
}
