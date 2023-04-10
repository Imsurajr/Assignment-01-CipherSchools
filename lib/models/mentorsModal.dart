import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Mentors extends Equatable {
  final AssetImage mentorImg;
  Mentors({required this.mentorImg});

  @override
  List<Object?> get props => [mentorImg];

  static List<Mentors> mentorss = [
    Mentors(mentorImg: AssetImage("images/mentor11.png"),),
    Mentors(mentorImg: AssetImage("images/mentor12.png"),),
    Mentors(mentorImg: AssetImage("images/mentor13.png"),),
    Mentors(mentorImg: AssetImage("images/mentor14.png"),),
    Mentors(mentorImg: AssetImage("images/mentor15.png"),),
    Mentors(mentorImg: AssetImage("images/mentor16.png"),),
    Mentors(mentorImg: AssetImage("images/mentor17.png"),),
    Mentors(mentorImg: AssetImage("images/mentor18.png"),),
    Mentors(mentorImg: AssetImage("images/mentor19.png"),),
    Mentors(mentorImg: AssetImage("images/mentor110.png"),),
    Mentors(mentorImg: AssetImage("images/mentor111.png"),),
  ];
}