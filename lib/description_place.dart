import 'package:flutter/material.dart';
import 'reviewList.dart';
import 'rating.dart';

class DescriptionPlace extends StatelessWidget {
 
  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {

   final title_starts = Row(
     children: <Widget> [
       Container(
         margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0 
         ),
         child: Text(
           namePlace,
           style:TextStyle(
             fontFamily: "Lato",
             fontSize: 30.0,
             fontWeight: FontWeight.w900
           ),
           textAlign: TextAlign.left,
         ),
       ),
       Container(
         margin: EdgeInsets.only(
           top : 23.0
         ),
         child: Row(
            children: <Widget> [
            Rating(stars, 5.0, 24.0)
            ],
          ),
       )
     ],
   );

  final description = Container(
    margin: EdgeInsets.only(
      top: 20.0,
      right: 20.0,
      left: 20.0
    ),
    child: new Text(
      descriptionPlace,
      style: const TextStyle(
        fontFamily: "Lato",
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Color(0xFF56575a)
      )
    )
  );


   return Column(
     children:  <Widget>[
       title_starts,
       description,
       description,
       new ReviewList(),
     ]
   );
  }
}