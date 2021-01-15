import 'package:flutter/material.dart';
import 'package:meditation_yoga/colorsfile.dart';
import 'package:meditation_yoga/screens/login/widget/curve_clipper.dart';

class BackgroundImage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        color: blueGrey.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: appPadding / 2,
              vertical: appPadding * 3),
          child: Center(
            child: Image(
              image: AssetImage('assets/images/yoga.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
