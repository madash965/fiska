import 'dart:math';

import 'package:fiska/models/reviewModal.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF8084);
const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);
const kTransparent = Colors.transparent;

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kShape = 30.0;

const kRadius = 0.0;
const kAppBarHeight = 56.0;

const kHeadTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
  color: kLightColor,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20.0,
  color: kPrimaryColor,
);

const kDarkTextStyle = TextStyle(
  fontSize: 20.0,
  color: kDarkColor,
);

const kDivider = Divider(
  color: kAccentColor,
  thickness: kLessPadding,
);

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);

DateTime dateTime =
    DateTime.now().subtract(Duration(days: Random().nextInt(20)));

final reviewList = [
  ReviewModal(
    image: "assets/banner1.jpg",
    name: "John Travolta",
    rating: 3.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner2.jpg",
    name: "Scarlett Johansson",
    rating: 2.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner3.jpg",
    name: "Jennifer Lawrence",
    rating: 4.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner4.jpg",
    name: "Michael Jordan",
    rating: 1.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  ReviewModal(
    image: "assets/banner5.jpg",
    name: "Nicole Kidman",
    rating: 2.0,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner6.jpg",
    name: "James Franco",
    rating: 4.0,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner7.jpg",
    name: "Margot Robbie",
    rating: 1.0,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner8.jpg",
    name: "Nicolas Cage",
    rating: 3.0,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner4.jpg",
    name: "Emma Stone",
    rating: 5.0,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner3.jpg",
    name: "Johnny Depp",
    rating: 3.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner2.jpg",
    name: "Natalie Portman",
    rating: 3.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner1.jpg",
    name: "Anne Hathaway",
    rating: 3.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/banner8.jpg",
    name: "Charlize Theron",
    rating: 3.5,
    dateTime: dateTime,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
];
