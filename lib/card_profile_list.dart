import 'package:flutter/material.dart';
import 'card_profile.dart';

class CardProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardProfile(320,"assets/img/sunset.jpeg","Knuskles Mountains Range","Hiking Watrer, Natural bath","Sceny & Photograghy","Steps   123,123,123"),
        CardProfile(100,"assets/img/mountain.jpeg","Knuskles Mountains Range","Hiking Watrer, Natural bath","Sceny & Photograghy","Steps   123,123,123"),
      ],
    );
  }
}