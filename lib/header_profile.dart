import 'package:flutter/material.dart';
import 'icon_header_profile.dart';

class HeaderProfile extends StatelessWidget {

  String pathImageUser = "assets/img/people.jpg";
  String nameUser = "Pathum Tzoo";
  String emailUser = "pathumtzoo@gmail.com";

  HeaderProfile(this.pathImageUser, this.nameUser, this.emailUser);

  @override
  Widget build(BuildContext context) {
     final header = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 60.0,
            left: 20.0
          ),
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
          )
        ),
        Container(
          margin: EdgeInsets.only(
             top: 75.0,
            left: 250.0
          ),
          child : Icon(
            Icons.settings_sharp,
            color: Colors.grey[350],
            size: 15.0,
          )
        )
      ],
    );

    final photoUser = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImageUser),
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      child:Text(
          nameUser,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Lato",
            fontSize: 16.0
          ),
      ),
    );

    final userEmail = Container(
      margin: EdgeInsets.only(
        top: 3.0,
        left: 20.0
      ),
      child:Text(
          emailUser,
          style: TextStyle(
            color: Colors.grey[350],
            fontFamily: "Lato",
            fontSize: 16.0
          ),
      ),
    );

    final userInfo = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userName,
          userEmail
        ],
      ),
    );

    final userInformation = Row(
      children: [
        photoUser,
        userInfo,
      ],
    );

    final iconHeader = 
    Container(
      margin: EdgeInsets.only(
        left: 8.0
      ),
      child:Row(
        children: [
          IconHeaderProfile(40.0, Colors.white, Icons.bookmark_border, 20.0),
          IconHeaderProfile(40.0, Colors.grey[350], Icons.work_outline, 20.0),
          IconHeaderProfile(70.0, Colors.white, Icons.add, 30.0),
          IconHeaderProfile(40.0, Colors.grey[350], Icons.email, 20.0),
          IconHeaderProfile(40.0, Colors.grey[350], Icons.person_sharp, 20.0),
        ],
      ),
    );

    return Container(
      height: 420.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp 
        )
      ),
      child: Column(
        children: [
          header,
          userInformation,
          iconHeader,
        ],
      )   
    );
  }
}