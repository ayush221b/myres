import 'package:flutter/foundation.dart';

class Restaurant {

  String id;
  String name;
  String url;
  String address;
  List<String> cuisines;
  double averageCostForTwo;
  double aggregateRating;
  String featuredImage;
  List<String> phoneNumbers;

  Restaurant({
    @required this.id,
    @required this.name,
    @required this.url,
    @required this.address,
    @required this.cuisines,
    @required this.averageCostForTwo,
    @required this.aggregateRating,
    @required this.featuredImage,
    @required this.phoneNumbers,

  });

}