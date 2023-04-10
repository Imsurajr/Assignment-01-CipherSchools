import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/coursesStart.dart';
import '../homepage/homescreen.dart';

List<String> Itemss = <String>["Popular", "Latest"];

class CourseScreen extends StatefulWidget {
  CourseScreen({Key? key}) : super(key: key);
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  String dropdownValue = Itemss.first;
  bool temp = true;
  int _bottomSelectedIndex = 0;
  ScrollController _scrollController1 = ScrollController();
  ScrollController _scrollController2 = ScrollController();
  ScrollController _scrollController3 = ScrollController();
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5fafa),
      appBar: AppBar(
        primary: true,
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'App Development',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Web Development',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Game Development',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Data Structures',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Programming',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Machine Learning',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Data Science',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Others',
                            style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ));
                },
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.explore_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Browse",
                  style: TextStyle(color: Colors.black, fontSize: 11),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image(
                        image: AssetImage("images/sigin.jpg"),
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: kToolbarHeight,
                      child: Material(
                        child: TextField(
                          decoration: InputDecoration(
                            iconColor: Color(0xffBED2DA),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            hintText: "Search and Learn",
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffBED2DA)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 20,
              )),
        ],
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
          child: Image(
            image: AssetImage("images/icon.png"),
          ),
        ),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search and Learn",
                  border: InputBorder.none,
                ),
              )
            : Text(
                "CipherSchools",
                style: GoogleFonts.openSans(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 3.0,
                          viewportFraction: 1.0,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                        ),
                        items: CoursesStart.coursesStartBanner
                            .map((CoursesStart) =>
                                BannerShow(courseBanner: CoursesStart))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Courses",
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    color: Colors.white38,
                    child: DropdownButton<String>(
                      onChanged: (String? value) {
                        setState(() {
                          temp = !temp;
                          dropdownValue = value!;
                        });
                      },
                      items:
                          Itemss.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController1,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(
                        image: temp == true
                            ? AssetImage("images/rc1.png")
                            : AssetImage("images/rc7.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: temp == true
                            ? AssetImage("images/rc2.png")
                            : AssetImage("images/rc6.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc3.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc4.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: temp == true
                            ? AssetImage("images/rc5.png")
                            : AssetImage("images/rc9.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc6.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc7.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: temp == true
                            ? AssetImage("images/rc8.png")
                            : AssetImage("images/rc10.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc1.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc9.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/rc10.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.25,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                            _scrollController1.animateTo(
                              _scrollController1.offset -
                                  MediaQuery.of(context).size.width,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 500),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                            _scrollController1.animateTo(
                              _scrollController1.offset +
                                  MediaQuery.of(context).size.width,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 500),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Videos",
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController2,
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/lv1.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv2.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv3.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv4.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv5.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv6.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv7.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv8.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv9.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv10.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/lv11.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.25,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                            _scrollController2.animateTo(
                              _scrollController2.offset -
                                  MediaQuery.of(context).size.width,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 500),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                            _scrollController2.animateTo(
                              _scrollController2.offset +
                                  MediaQuery.of(context).size.width,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 500),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Categories",
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController3,
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/pc1.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc2.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc3.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc4.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc5.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc6.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc7.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Image(
                          image: AssetImage("images/pc8.png"),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                            _scrollController3.animateTo(
                              _scrollController3.offset -
                                  MediaQuery.of(context).size.width,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 500),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                            _scrollController3.animateTo(
                              _scrollController3.offset +
                                  MediaQuery.of(context).size.width,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 500),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Courses",
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/ac1.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac2.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac3.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac4.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac5.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac6.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac7.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac8.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac9.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac10.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac11.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac12.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac13.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("images/ac14.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac15.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac16.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac17.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac18.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac19.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac20.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac21.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac22.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac23.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac24.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Image(
                        image: AssetImage("images/ac25.png"),
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 30,
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
          unselectedItemColor: Colors.amber[800],
          selectedItemColor: Colors.grey[600],
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

class BannerShow extends StatelessWidget {
  final CoursesStart courseBanner;
  BannerShow({required this.courseBanner});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image(
              image: courseBanner.imageShow, // Use AssetImage here
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
