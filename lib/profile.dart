import 'package:flutter/material.dart';
import 'header_profile.dart';
import 'card_profile_list.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderProfile("assets/img/people.jpg","Pathum Tzoo","pathumtzoo@gmail.com"),
        CardProfileList(),
      ],
    );
  }
}