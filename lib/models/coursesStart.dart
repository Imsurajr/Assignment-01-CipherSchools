import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class CoursesStart extends Equatable {
  final AssetImage imageShow;
  CoursesStart({required this.imageShow});

  @override
  List<Object?> get props => [imageShow];

  static List<CoursesStart> coursesStartBanner = [
    CoursesStart(imageShow: AssetImage("images/coursebanner1.png"),),
    CoursesStart(imageShow: AssetImage("images/coursebanner2.png"),),
    CoursesStart(imageShow: AssetImage("images/coursebanner3.png"),),
    CoursesStart(imageShow: AssetImage("images/coursebanner4.png"),),
  ];
}