import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Category extends Equatable {
 final AssetImage imageUrl;
 Category({required this.imageUrl});

  @override
  List<Object?> get props => [imageUrl];

  static List<Category> categories = [
    Category(imageUrl: AssetImage("images/banner1.png"),),
    Category(imageUrl: AssetImage("images/banner2.png"),),
    Category(imageUrl: AssetImage("images/banner3.png"),),
    Category(imageUrl: AssetImage("images/banner4.png"),),
  ];
}