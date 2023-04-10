import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class CreatorsFrom extends Equatable {
  final AssetImage image;
  CreatorsFrom({required this.image});

  @override
  List<Object?> get props => [image];

  static List<CreatorsFrom> creators = [
    CreatorsFrom(image: AssetImage("images/creator1.png"),),
    CreatorsFrom(image: AssetImage("images/creator2.png"),),
    CreatorsFrom(image: AssetImage("images/creator3.png"),),
    CreatorsFrom(image: AssetImage("images/creator4.png"),),
    CreatorsFrom(image: AssetImage("images/creator5.png"),),
    CreatorsFrom(image: AssetImage("images/creator6.png"),),
    CreatorsFrom(image: AssetImage("images/creator7.png"),),
    CreatorsFrom(image: AssetImage("images/creator8.png"),),
    CreatorsFrom(image: AssetImage("images/creator9.png"),),
    CreatorsFrom(image: AssetImage("images/creator10.png"),),
  ];
}