import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:assignment_01/theme/theme.dart';

class ReusedContainer extends StatelessWidget {
  final Color color;
  final String titleText;
  final Color titleColor;
  final String subTitleText;
  final Color subTitleColor;
  final double width;
  final double height;
  const ReusedContainer(
      {super.key,
      required this.color,
      required this.titleText,
      required this.titleColor,
      required this.subTitleText,
      required this.subTitleColor,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            titleText,
            textAlign: TextAlign.center,
            minFontSize: 20,
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              color: titleColor,
              fontSize: 42,
            ),
          ),
          AutoSizeText(
            subTitleText,
            textAlign: TextAlign.center,
            minFontSize: 10,
            maxLines: 2,
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              color: subTitleColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
