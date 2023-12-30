import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 80,
              child: AppBar(),
            ),
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 195,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 180,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(229, 136, 145, 255),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SmoothPageIndicator(
                              controller: PageController(),
                              effect: const ExpandingDotsEffect(
                                activeDotColor:
                                    Color.fromARGB(229, 136, 145, 255),
                                dotHeight: 6,
                                dotWidth: 7,
                                dotColor: Colors.grey,
                              ),
                              count: 3,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "For you",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "See All",
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                            229, 136, 145, 255),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Icon(
                                      LineAwesomeIcons.arrow_right,
                                      color: Color.fromARGB(229, 136, 145, 255),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Unit(
                                    iconn: LineAwesomeIcons.book,
                                    unit: "Physics",
                                    myColor: Color.fromARGB(129, 159, 65, 236),
                                  ),
                                  Unit(
                                    iconn: LineAwesomeIcons.book,
                                    unit: "Biology",
                                    myColor: Color.fromARGB(129, 65, 182, 236),
                                  ),
                                  Unit(
                                    iconn: LineAwesomeIcons.book,
                                    unit: "History",
                                    myColor: Color.fromARGB(129, 65, 236, 156),
                                  ),
                                  Unit(
                                    iconn: LineAwesomeIcons.book,
                                    unit: "Geography",
                                    myColor: Color.fromARGB(129, 236, 65, 65),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Recommended",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 180,
                                    width: MediaQuery.of(context).size.width *
                                        0.44,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          134, 228, 228, 228),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Resources",
                                            style: GoogleFonts.inter(
                                              fontSize: 13,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "Unlock Wisdom Here",
                                            style: GoogleFonts.inter(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800,
                                              height: 1.4,
                                              color: const Color.fromARGB(
                                                  255, 136, 146, 255),
                                            ),
                                          ),
                                          Text(
                                            "Refine skills with Prephub’s reference materials",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              height: 1.2,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width *
                                        0.44,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          134, 228, 228, 228),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Career Guidance",
                                            style: GoogleFonts.inter(
                                              fontSize: 13,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "Path to Proficiency",
                                            style: GoogleFonts.inter(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800,
                                              height: 1.4,
                                              color: const Color.fromARGB(
                                                  255, 136, 146, 255),
                                            ),
                                          ),
                                          Text(
                                            "Resources for exploring career options, internships, and skill development",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              height: 1.2,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 150,
                                    width: MediaQuery.of(context).size.width *
                                        0.42,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          134, 228, 228, 228),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Join your peers -",
                                          style: GoogleFonts.inter(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w800,
                                            height: 1.4,
                                            color: const Color.fromARGB(
                                                255, 136, 146, 255),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        FlutterImageStack(
                                          imageSource: ImageSource.asset,
                                          imageList: const [
                                            "assets/avatar-ali.png",
                                            "assets/avatar-anisha.png",
                                            "assets/avatar-shanai.png",
                                          ],
                                          totalCount: 45,
                                          itemCount: 3,
                                          itemRadius: 35,
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 230,
                                    width: MediaQuery.of(context).size.width *
                                        0.42,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          134, 228, 228, 228),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Skill quest challenges",
                                            style: GoogleFonts.inter(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800,
                                              height: 1.4,
                                              color: const Color.fromARGB(
                                                  255, 136, 146, 255),
                                            ),
                                          ),
                                          Text(
                                            "Engage in dynamic learning challenges, fueling your skills and igniting your competitive spirit",
                                            style: GoogleFonts.inter(
                                              fontSize: 14,
                                              height: 1.2,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Container(
                                            width: 78,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 5),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 136, 146, 255),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Start",
                                                    style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    LineAwesomeIcons
                                                        .arrow_right,
                                                    color: Colors.white,
                                                    size: 14,
                                                  )
                                                ]),
                                          )
                                        ],
                                      ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Unit extends StatelessWidget {
  const Unit({
    super.key,
    required this.unit,
    required this.iconn,
    required this.myColor,
  });
  final String unit;
  final IconData? iconn;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            iconn,
            color: Colors.white,
            size: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            unit,
            style: GoogleFonts.inter(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Greetings",
            style: GoogleFonts.inter(
              fontSize: 21,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w800,
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: const Color.fromARGB(229, 136, 145, 255),
                borderRadius: BorderRadius.circular(200)),
            child: const Icon(
              LineAwesomeIcons.user,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
