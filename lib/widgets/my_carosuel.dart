import 'package:assignment_01/widgets/reusable_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: [
        ReusedContainer(
          color: Color(0xff01c299),
          titleText: "2+",
          titleColor: whiteColor,
          height: size.height / 4.5,
          width: size.width / 1.8,
          subTitleText: "Years Experience",
          subTitleColor: whiteColor,
        ),
        ReusedContainer(
          color: Color(0xfffec03d),
          titleText: "54+",
          titleColor: whiteColor,
          height: size.height / 4.5,
          width: size.width / 1.8,
          subTitleText: "Handeled Projects",
          subTitleColor: whiteColor,
        ),
        ReusedContainer(
          color: Color(0xff01c299),
          titleText: "40+",
          titleColor: whiteColor,
          height: size.height / 4.5,
          width: size.width / 1.8,
          subTitleText: "Clients",
          subTitleColor: whiteColor,
        ),
      ]
          .map((item) => Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: item,
              ))
          .toList(),
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.7,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {},
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
