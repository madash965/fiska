import 'dart:math';
import 'package:intl/intl.dart' show DateFormat;

class ReviewModal {
  String image;
  String name;
  double rating;
  DateTime dateTime =
      DateTime.now().subtract(Duration(days: Random().nextInt(20)));
  String comment;

  ReviewModal(
      {this.image, this.name, this.rating, this.dateTime, this.comment});

  getDateTime() {
    return DateFormat('yyyy-MM-dd HH:mm').format(this.dateTime);
  }

  ReviewModal.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    rating = json['rating'];
    dateTime = json['dateTime'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['rating'] = this.rating;
    data['dateTime'] = this.dateTime;
    data['comment'] = this.comment;
    return data;
  }
}
