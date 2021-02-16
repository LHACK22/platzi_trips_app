import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review(5),
        Review(3.5),
        Review(4.3),
      ],
    );
  }
}