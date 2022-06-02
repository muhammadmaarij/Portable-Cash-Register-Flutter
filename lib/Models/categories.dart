import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Categories {
  final String itemName;
  final double price;
  final String size;
  final String images;

  Categories(
      {required this.itemName,
      required this.price,
      required this.size,
      required this.images});
}

//List<Categories> categories = [(itemName:'A', int:1, imageIcon:'') ];


