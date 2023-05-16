import 'package:assignment_01/theme/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../widgets/my_carosuel.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var commonSpacingHeight = SizedBox(
      height: size.height / 80,
    );

    var commonSpacingWidth = SizedBox(
      width: size.width / 60,
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: AutoSizeText.rich(TextSpan(
          children: [
            TextSpan(
              text: "Bim",
              style: TextStyle(
                color: whiteColor,
                fontSize: 18.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.normal,
              ),
            ),
            TextSpan(
              text: "Graph",
              style: TextStyle(
                color: whiteColor,
                fontSize: 18.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: const [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.menu,
              color: whiteColor,
              size: 22.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Stack(
            children: [
              Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: AutoSizeText(
                            stepGranularity: 5,
                            minFontSize: 20,
                            maxLines: 3,
                            "Bringing Your Ideas\nTo Life Through\nUI Design",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 50.0,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  commonSpacingHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height / 3,
                        width: size.width / 1.55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: primaryColor,
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/profile_image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      commonSpacingWidth,
                      Container(
                        height: size.height / 3,
                        width: size.width / 4.25,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xff286bb0),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/logos/linkedin.png',
                                  width: 28,
                                  height: 28,
                                ),
                                iconSize: 28,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff282728),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/logos/github.png',
                                  width: 28,
                                  height: 28,
                                ),
                                iconSize: 28,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff282728),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/logos/twitter.png',
                                  width: 28,
                                  height: 28,
                                ),
                                iconSize: 28,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff282728),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/logos/instagram.png',
                                  width: 28,
                                  height: 28,
                                ),
                                iconSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  commonSpacingHeight,
                  Container(
                    height: size.height / 14,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AutoSizeText(
                            "Name:",
                            minFontSize: 6,
                            stepGranularity: 2,
                            style: TextStyle(
                              color: lightTextColor,
                              fontSize: 16.0,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          AutoSizeText(
                            "Bima Sakti",
                            minFontSize: 8,
                            stepGranularity: 2,
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 18.0,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  commonSpacingHeight,
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: MyCarousel(),
                  ),
                  commonSpacingHeight,
                  AspectRatio(
                    aspectRatio: 16 / 12,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                AutoSizeText(
                                  "About",
                                  minFontSize: 12,
                                  stepGranularity: 2,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 18.0,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                AutoSizeText(
                                  "Resume",
                                  minFontSize: 12,
                                  stepGranularity: 4,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: lightTextColor,
                                    fontSize: 18.0,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              child: AutoSizeText(
                                "I am a UI designer with a passionfor creating intuitive and visually appealing user interface. I have a strong understanding of design principles and work closely with developers to bring my designs to life. I have had the opportunity to work with a variety of clients at a studio and am always striving to improve my skills and stay up-to-date on the latest design trends.",
                                minFontSize: 12,
                                stepGranularity: 6,
                                maxLines: 9,
                                style: TextStyle(
                                  color: lightTextColor,
                                  fontSize: 16.0,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  commonSpacingHeight,
                  Container(
                    width: size.width / 1.1,
                    height: size.height / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              AutoSizeText(
                                "UI Portofolio",
                                minFontSize: 12,
                                stepGranularity: 2,
                                maxLines: 2,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 18.0,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              AutoSizeText(
                                "See All",
                                minFontSize: 12,
                                stepGranularity: 2,
                                maxLines: 2,
                                style: TextStyle(
                                  color: lightTextColor,
                                  fontSize: 18.0,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width / 2.4,
                              height: size.height / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/sample_image1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            commonSpacingWidth,
                            Container(
                              width: size.width / 2.4,
                              height: size.height / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/sample_image2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                width: size.width,
                                height: size.height,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Read more',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  commonSpacingHeight,
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                AutoSizeText(
                                  "Based in:",
                                  minFontSize: 4,
                                  stepGranularity: 2,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: lightTextColor,
                                    fontSize: 16.0,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                AutoSizeText(
                                  "Tanjung Pinang",
                                  minFontSize: 4,
                                  stepGranularity: 4,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 18.0,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/logos/map_image.png",
                              fit: BoxFit.cover,
                              height: size.height / 6,
                              width: size.width / 1.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: SizedBox(
          width: size.width / 3.5,
          height: size.height / 15,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Colors.blue.withOpacity(0.2),
            onPressed: () {},
            child: const Text(
              "Hire Me",
              style: TextStyle(
                color: whiteColor,
                fontSize: 16.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
