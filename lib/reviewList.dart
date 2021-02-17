import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review("assets/img/people.jpg","Varuna Yasas","1 review 5 photos","There is an amazing place in Sri Lanka",5),
        Review("assets/img/people2.jpg","Christian Henst","4 review 3 photos","There is an amazing place in Sri Lanka",4.5),
        Review("assets/img/people3.jpg","Yahoo Kami","5 review 3 photos","There is an amazing place in Sri Lanka",4),
      ],
    );
  }
}