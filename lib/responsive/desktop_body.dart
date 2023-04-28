import 'package:assignment_01/widgets/reusable_container.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:assignment_01/theme/theme.dart';
import 'package:getwidget/getwidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var commonSpacingHeight = SizedBox(
      height: size.height / 80,
    );

    var commonSpacingWidth = SizedBox(
      width: size.width / 110,
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: size.width / 2.1,
                      height: size.height / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: primaryColor,
                      ),
                      child: Stack(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: AutoSizeText(
                                  // maxFontSize: 50,
                                  stepGranularity: 5,
                                  minFontSize: 20,
                                  maxLines: 3,
                                  "Bringing Your Ideas\nTo Life Through\nUI Design",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 50.0,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 20,
                          right: 10,
                          child: SizedBox(
                            width: size.width / 9,
                            height:
                                size.height / 16,
                            child: FloatingActionButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.0),
                              ),
                              backgroundColor: buttonColor,
                              onPressed: () {},
                              child: const AutoSizeText(
                                "  Hire Me 👋",
                                minFontSize: 6,
                                maxLines: 1,
                                stepGranularity: 2,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 12.0,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    commonSpacingHeight,
                    Row(
                      children: [
                        ReusedContainer(
                          color: Color(0xff01c299),
                          titleText: "2+",
                          titleColor: whiteColor,
                          subTitleText: "Years Experience",
                          subTitleColor: whiteColor,
                          height: size.height / 4.5,
                          width: size.width / 6.5,
                        ),
                        commonSpacingWidth,
                        ReusedContainer(
                          color: Color(0xfffec03d),
                          titleText: "54+",
                          titleColor: backgroundColor,
                          subTitleText: "Handeled Projects",
                          subTitleColor: backgroundColor,
                          height: size.height / 4.5,
                          width: size.width / 6.5,
                        ),
                        commonSpacingWidth,
                        ReusedContainer(
                          color: Color(0xff01c299),
                          titleText: "40+",
                          titleColor: whiteColor,
                          subTitleText: "Clients",
                          subTitleColor: whiteColor,
                          height: size.height / 4.5,
                          width: size.width / 6.5,
                        )
                      ],
                    ),
                  ],
                ),
                commonSpacingWidth,
                Column(
                  children: [
                    Container(
                      width: size.width / 2.1,
                      height: size.height / 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AutoSizeText.rich(TextSpan(
                              children: [
                                TextSpan(
                                  text: "Bim",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 14.0,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(
                                  text: "Graph",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 14.0,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )),
                            Icon(
                              Icons.menu,
                              color: whiteColor,
                              size: 18.0,
                            )
                          ],
                        ),
                      ),
                    ),
                    commonSpacingHeight,
                    Row(
                      children: [
                        Container(
                          width: size.width / 4.2,
                          height: size.height / 2.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: primaryColor,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile_image.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        commonSpacingWidth,
                        Column(
                          children: [
                            Container(
                              width: size.width / 4.5,
                              height: size.height / 14,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: primaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    AutoSizeText(
                                      "Name:",
                                      minFontSize: 6,
                                      stepGranularity: 2,
                                      style: TextStyle(
                                        color: lightTextColor,
                                        fontSize: 12.0,
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
                                        fontSize: 14.0,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            commonSpacingHeight,
                            Container(
                              width: size.width / 4.5,
                              height: size.height / 3.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: primaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        AutoSizeText(
                                          "Based in:",
                                          minFontSize: 4,
                                          stepGranularity: 2,
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: lightTextColor,
                                            fontSize: 12.0,
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
                                            fontSize: 14.0,
                                            fontFamily: "Lato",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/logos/map_image.png",
                                      fit: BoxFit.cover,
                                      height: size.height / 4.3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            commonSpacingHeight,
                            Container(
                              width: size.width / 4.5,
                              height: size.height / 14,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: primaryColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: const Color(0xff246bb0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/logos/linkedin.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      iconSize: 24,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: const Color(0xff282728),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/logos/github.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      iconSize: 24,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: const Color(0xff282728),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/logos/twitter.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      iconSize: 24,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: const Color(0xff282728),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/logos/instagram.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      iconSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            commonSpacingHeight,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 1.7,
                  height: size.height / 2.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
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
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: size.width / 6.5,
                                height: size.height / 4.5,
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
                              Container(
                                width: size.width / 6.5,
                                height: size.height / 4.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/sample_image1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width / 6.5,
                                height: size.height / 4.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/sample_image2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                commonSpacingWidth,
                Container(
                  width: size.width / 2.75,
                  height: size.height / 2.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: primaryColor,
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
                              fontSize: 14.0,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
