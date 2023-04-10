import 'package:assignment_01_cipherschools/models/category_modal.dart';
import 'package:assignment_01_cipherschools/screens/courses/coursesscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../models/creatorsFrom.dart';
import '../../models/mentorsModal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int color = 0;
  SampleItem? selectedMenu;
  int ButtonSelected = 1;
  int TextButtonSelect = 1;
  int IconButtonSelected = 1;
  int _bottomSelectedIndex = 0;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary: true,
        actions: [
          Material(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(25),
              onChanged: (value) {},
              icon: Icon(Icons.menu_open_sharp, color: Colors.black, size: 30),
              iconSize: 20,
              underline: SizedBox(),
              items: [
                DropdownMenuItem(
                  child: Text('Home'),
                  value: 'Home',
                ),
                DropdownMenuItem(
                  child: Text('Creator Access'),
                  value: 'Creator Access',
                ),
                DropdownMenuItem(
                  child: Text('Live Reviews'),
                  value: 'Live Reviews',
                ),
                DropdownMenuItem(
                  child: Text('Community'),
                  value: 'Community',
                ),
                DropdownMenuItem(
                  child: Text('Explore Courses'),
                  value: 'Explore Courses',
                ),
                DropdownMenuItem(
                  child: Text('SignIn'),
                  value: 'SignIn',
                ),
              ],
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
          child: Image(
            image: AssetImage("images/icon.png"),
          ),
        ),
        title: Text(
          "CipherSchools",
          style: GoogleFonts.openSans(
              color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome to ",
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "the Future",
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  ),
                  TextSpan(
                    text: " of Learning!",
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " Start Learning by best creators for ",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  " absolutely Free",
                  cursor: "|",
                  speed: (Duration(milliseconds: 150)),
                  textStyle: GoogleFonts.cabin(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 120,
                    height: 55,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 60,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            foregroundDecoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff373c44),
                              backgroundImage:
                                  AssetImage("images/mentor3.webp"),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            foregroundDecoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff373c44),
                              backgroundImage:
                                  AssetImage("images/mentor2.webp"),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            foregroundDecoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff373c44),
                              backgroundImage:
                                  AssetImage("images/mentor1.webp"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        "50+",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mentors",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 1,
                    height: 50,
                    color: Colors.grey[500],
                    margin: EdgeInsets.symmetric(horizontal: 15),
                  ),
                  Column(
                    children: [
                      Text(
                        "4.8/5",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("images/rate.png"),
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            " Ratings",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CourseScreen()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Start Learning Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.7,
                  viewportFraction: 0.6,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => ImageShowing(category: category))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      Text(
                        "15K+",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Students",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Text(
                        "10K+",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Certificates delivered",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      Text(
                        "450K+",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Streamed minutes",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Text(
                        "12TB+",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Content streamed in",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "last 60 days",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      Text(
                        "150+",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Creators",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Column(
                    children: [
                      Text(
                        "110+",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Programs available",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Card(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Image.asset(
                        "images/container1.jpg",
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, bottom: 10),
                            child: Text(
                              "Unlock your learning potential with CipherSchools",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, bottom: 10),
                            child: Text(
                              "Best platform for the students",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, bottom: 10),
                            child: TextButton(
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.white;
                                    }
                                    return Colors.white;
                                  },
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.white;
                                    }
                                    return Colors.transparent;
                                  },
                                ),
                                side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.white, width: 2),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "For Students 🎓",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Card(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Image.asset(
                        "images/container2.jpg",
                        fit: BoxFit.cover,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, bottom: 10),
                            child: Text(
                              "Empowering students to open their minds to utmost knowledge",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, bottom: 10),
                            child: Text(
                              "Be the mentor you never had",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, bottom: 10),
                            child: TextButton(
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.white;
                                    }
                                    return Colors.white;
                                  },
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.white;
                                    }
                                    return Colors.transparent;
                                  },
                                ),
                                side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.white, width: 2),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "For Creators 🧑‍🏫",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  color: Color(0xff353A42),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 20, bottom: 10),
                      child: Text(
                        "Students LIVE Feedback",
                        style: GoogleFonts.openSans(
                            color: Colors.orange, fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text(
                        "We love to read them",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: Text(
                        "feedback is a significant component of our success because it inspires us to get better and meet the expectations of our students.",
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            child: Image(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'reviews/cicc1.png'),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Awanit Singh",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Hyper Text Markup Language (HTML)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'Thank You For giving me this type of videos. That help me understand HTML and CSS',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cicc2.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Isha Verma",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Basics of Python",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'I learned Python from basics from this course and it is very helpful and I learned various tricks to code easily',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cicc3.jpg'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Bhawani Prasad",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "The Beginner's Guide to Microsoft Excel |",
                                                textAlign: TextAlign.justify,
                                                softWrap: true,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                "Excel Training",
                                                textAlign: TextAlign.justify,
                                                softWrap: true,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'one of the useful classes to improve the basics',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cicc4.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Kuldeep Vishwas",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Hyper Text Markup Language (HTML)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'very better explain,many things i got learn from here, all the videos good explanation',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cicc5.jpg'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Akash Sharma",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Cascading Style Sheet (CSS)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'teacher is good and his way of teaching is excellent, i am surei am perfect in css by watching this show videos',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cric6.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Abhishek Tiwari",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "The Beginner's Guide to Microsoft Excel |",
                                                textAlign: TextAlign.justify,
                                                softWrap: true,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                "Excel Training",
                                                textAlign: TextAlign.justify,
                                                softWrap: true,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'All videos is so useful for me and mentor have good teaching skills',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'reviews/cric7.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Abhishek Kumar",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Python& Django For Beginners",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'Thank You. great platform to learn and build ourself',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/4star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cicc8.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Shubham Lakra",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Cascading Style Sheet (CSS)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'The courses were nice and really detailed. I liked to watch them and hope to see more in future',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 65.0, left: 15),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipOval(
                                            child: CircleAvatar(
                                              radius: 25,
                                              child: Image(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'reviews/cicc9.jpg'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Jatin Chetty",
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "Python& Django For Beginners",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 15,
                                      top: 80,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: Text(
                                          'it was beginners friendly and very informative',
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5,
                                      bottom: 30,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.20,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Content:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Platform",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Mentor:",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 12.0,
                                                                bottom: 8.0),
                                                        child: Text(
                                                          "Community",
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 18),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Image(
                                                          image: AssetImage(
                                                              "reviews/5star.png"),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text("Creators from",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.openSans(
                          fontSize: 25, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 3.9,
                  viewportFraction: 0.6,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: CreatorsFrom.creators
                    .map((CreatorsFrom) =>
                        CategoryShowing(creator: CreatorsFrom))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Text("Bests are here",
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                    fontSize: 25, fontWeight: FontWeight.w700)),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 1;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Trendings",
                            style: TextStyle(
                                color: ButtonSelected == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 1
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 2;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("App Development",
                            style: TextStyle(
                                color: ButtonSelected == 2
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 2
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 3;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Web Development",
                            style: TextStyle(
                                color: ButtonSelected == 3
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 3
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 4;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Game Development",
                            style: TextStyle(
                                color: ButtonSelected == 4
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 4
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 5;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Data Structures",
                            style: TextStyle(
                                color: ButtonSelected == 5
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 5
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 6;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Programming",
                            style: TextStyle(
                                color: ButtonSelected == 6
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 6
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 7;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Machine Learning",
                            style: TextStyle(
                                color: ButtonSelected == 7
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 7
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 8;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Data Science",
                            style: TextStyle(
                                color: ButtonSelected == 8
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 8
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          ButtonSelected = 9;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
                        child: Text("Others",
                            style: TextStyle(
                                color: ButtonSelected == 9
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: ButtonSelected == 9
                            ? MaterialStateProperty.all(Colors.orange)
                            : MaterialStateProperty.all(Colors.grey[300]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor:
                      IconButtonSelected == 1 ? Colors.orange : Colors.black,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        IconButtonSelected = 1;
                      });
                      _scrollController.animateTo(
                        _scrollController.offset -
                            MediaQuery.of(context).size.width,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor:
                      IconButtonSelected == 2 ? Colors.orange : Colors.black,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        IconButtonSelected = 2;
                      });
                      _scrollController.animateTo(
                        _scrollController.offset +
                            MediaQuery.of(context).size.width,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Image(
                          image: ButtonSelected == 1
                              ? AssetImage("images/trendings1.png")
                              : ButtonSelected == 2
                                  ? AssetImage("images/appdev1.png")
                                  : ButtonSelected == 3
                                      ? AssetImage("images/webdev1.png")
                                      : ButtonSelected == 4
                                          ? AssetImage("images/gamedev1.png")
                                          : ButtonSelected == 5
                                              ? AssetImage("images/ds1.png")
                                              : ButtonSelected == 6
                                                  ? AssetImage(
                                                      "images/programming1.png")
                                                  : ButtonSelected == 7
                                                      ? AssetImage(
                                                          "images/ml1.png")
                                                      : ButtonSelected == 8
                                                          ? AssetImage(
                                                              "images/ds1.png")
                                                          : AssetImage(
                                                              "images/others1.png")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Image(
                          image: ButtonSelected == 1
                              ? AssetImage("images/trendings2.png")
                              : ButtonSelected == 2
                                  ? AssetImage("images/appdev2.png")
                                  : ButtonSelected == 3
                                      ? AssetImage("images/webdev2.png")
                                      : ButtonSelected == 4
                                          ? AssetImage("images/gamedev2.png")
                                          : ButtonSelected == 5
                                              ? AssetImage("images/ds2.png")
                                              : ButtonSelected == 6
                                                  ? AssetImage(
                                                      "images/programming2.png")
                                                  : ButtonSelected == 7
                                                      ? AssetImage(
                                                          "images/ml2.png")
                                                      : ButtonSelected == 8
                                                          ? AssetImage(
                                                              "images/ds2.png")
                                                          : AssetImage(
                                                              "images/others2.png")),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Image(
                          image: ButtonSelected == 1
                              ? AssetImage("images/trendings3.png")
                              : ButtonSelected == 2
                                  ? AssetImage("images/white.png")
                                  : ButtonSelected == 3
                                      ? AssetImage("images/webdev3.png")
                                      : ButtonSelected == 4
                                          ? AssetImage("images/gamedev3.png")
                                          : ButtonSelected == 5
                                              ? AssetImage("images/ds3.png")
                                              : ButtonSelected == 6
                                                  ? AssetImage(
                                                      "images/programming3.png")
                                                  : ButtonSelected == 7
                                                      ? AssetImage(
                                                          "images/ml3.png")
                                                      : ButtonSelected == 8
                                                          ? AssetImage(
                                                              "images/ds3.png")
                                                          : AssetImage(
                                                              "images/others3.png")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Image(
                          image: ButtonSelected == 1
                              ? AssetImage("images/trendings4.png")
                              : ButtonSelected == 2
                                  ? AssetImage("images/white.png")
                                  : ButtonSelected == 3
                                      ? AssetImage("images/webdev4.png")
                                      : ButtonSelected == 4
                                          ? AssetImage("images/white.png")
                                          : ButtonSelected == 5
                                              ? AssetImage("images/ds4.png")
                                              : ButtonSelected == 6
                                                  ? AssetImage(
                                                      "images/programming4.png")
                                                  : ButtonSelected == 7
                                                      ? AssetImage(
                                                          "images/ml4.png")
                                                      : ButtonSelected == 8
                                                          ? AssetImage(
                                                              "images/ds4.png")
                                                          : AssetImage(
                                                              "images/white.png")),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Our Expert Mentors",
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                    fontSize: 25, fontWeight: FontWeight.w700)),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.6,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ),
                items: Mentors.mentorss
                    .map((Mentors) => MentorShowing(mentorrr: Mentors))
                    .toList(),
              ),
            ),
            Stack(
              children: [
                Container(
                  child: Image(image: AssetImage("images/discord.jpg")),
                ),
                Positioned(
                  top: 15,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Image(image: AssetImage("images/discordlogo.png")),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: 219,
                  child: ElevatedButton(
                    onPressed: () {
                      launchUrl('https://discord.com/invite/6UpapjVjMm' as Uri);
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
                      child: Text(
                        'Join Discord',
                        style: GoogleFonts.openSans(fontSize: 15),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff5865F1))),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 5),
                Image(
                  image: AssetImage("images/cipherschoolslogo.png"),
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(width: 5),
            Container(
                child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                "Cipherschools is a bootstrapped educational video streaming platform in India that is connecting passionate unskilled students to skilled Industry experts to fulfill their career dreams.",
                textAlign: TextAlign.justify,
                style: GoogleFonts.openSans(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            )),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                launchUrl('mailto:support@cipherschools.com' as Uri);
              },
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.email_outlined, size: 18),
                  SizedBox(width: 10),
                  Text(
                    "support@cipherschools.com",
                    style: GoogleFonts.openSans(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Popular Cources",
                        style: GoogleFonts.openSans(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Data Science",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Programming",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Data Structures",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Machine Learning ",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Web Development ",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Game Development",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Company Info",
                        style: GoogleFonts.openSans(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Home",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Blog",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Why we?",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Site Map ",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Privacy Policy ",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        TextButtonSelect = 2;
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text("Terms & Condition",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(height: 20),
            Container(
              color: Color(0xffF2F5FA),
              child: Column(children: [
                Image(
                  width: MediaQuery.of(context).size.width * 0.7,
                  image: AssetImage("images/bottoms1.png"),
                ),
                SizedBox(height: 10),
                Image(
                  image: AssetImage("images/bottoms2.png"),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Courses',
            ),
          ],
          currentIndex: _bottomSelectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      index == 0 ? HomeScreen() : CourseScreen()),
            );
          },
        ),
      ),
    );
  }
}

class ImageShowing extends StatelessWidget {
  final Category category;
  ImageShowing({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image(
              image: category.imageUrl, // Use AssetImage here
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryShowing extends StatelessWidget {
  final CreatorsFrom creator;
  CategoryShowing({required this.creator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image(
              image: creator.image, // Use AssetImage here
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MentorShowing extends StatelessWidget {
  final Mentors mentorrr;
  MentorShowing({required this.mentorrr});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image(
              image: mentorrr.mentorImg, // Use AssetImage here
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum SampleItem { item1, item2, item3, item4, item5, item6 }
