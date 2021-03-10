import 'package:flutter/material.dart';

class IconHeaderProfile extends StatelessWidget {
  
  double sizeContainer = 50.0;
  var colorContainer = Colors.white;
  var icon = Icons.add;
  double sizeIcon = 30.0;

  IconHeaderProfile(this.sizeContainer, this.colorContainer, this.icon, this.sizeIcon);

  @override
  Widget build(BuildContext context) {
    final contentIcon =Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 15.0,
        right: 15.0
      ),
      width: sizeContainer,
      height: sizeContainer,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorContainer
      ),
    );

    final icon = Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 15.0,
        right: 15.0
      ),
      child: Icon(
        this.icon,
        size: sizeIcon,
        color: Color(0xFF4268D3),
      ),
    );


    return  Stack(
      children: [
        contentIcon,
        icon
      ],
      alignment: Alignment.center,
    );
  }
}