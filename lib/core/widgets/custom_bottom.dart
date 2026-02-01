import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Utils/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.topLeft,
    this.bottomLeft,
    this.topRight,
    this.bottomRight,
    this.fontSize,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Radius? topLeft;
  final Radius? bottomLeft;
  final Radius? topRight;
  final Radius? bottomRight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: topLeft ?? Radius.circular(0),
              bottomLeft: bottomLeft ?? Radius.circular(0),
              topRight: topRight ?? Radius.circular(0),
              bottomRight: bottomRight ?? Radius.circular(0),
            ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize ?? 18,
          ),
        ),
      ),
    );
  }
}
