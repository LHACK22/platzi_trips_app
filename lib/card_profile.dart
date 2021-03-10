import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {

  double marginTop = 50;
  String pathImage = "assets/img/beach.jpeg";
  String titleCardC = "Knuskles Mountains Range";
  String descriptionCardC1 = "Hiking Watrer, Natural bath";
  String descriptionCardC2 = "Sceny & Photograghy";
  String stepsCardC = "Steps   123,123,123";


  CardProfile(this.marginTop, this.pathImage, this.titleCardC, this.descriptionCardC1, this.descriptionCardC2, this.stepsCardC);

  @override
  Widget build(BuildContext context) {
    
    final image = Container(
      height: 220.0,
      width: 370.0,
      margin: EdgeInsets.only(
        top: marginTop,
        left: 10.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    final titleDescription = Container(
      child: Text(
        titleCardC,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final textDescription = Container(
      child: Column(
        children: [
          Text(
            descriptionCardC1,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 12.0,
              color: Colors.grey
            ),
          ),
          Text(
            descriptionCardC2,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 12.0,
              color: Colors.grey
            ),
          ),

        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );

    final stepsDescription = Container(
      child: Text(
          stepsCardC,
          style: TextStyle(
            fontFamily: "Lato",
            color: Colors.orange,
            fontSize: 17.0,
            fontWeight: FontWeight.bold
          ),
      ),
    );

    final descriptionCard = Container(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
      child: Column(
        children: <Widget> [
          titleDescription,
          textDescription,
          stepsDescription
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      height: 120,
      width: 300,
    );

    final card = Stack(
      alignment: Alignment(0.8,1.1),
      children: <Widget> [
        descriptionCard,
        FloatingActionButton(
          backgroundColor: Color(0xFF11DA53),
          mini: true,
          tooltip: "Fav",
          onPressed: null,
          child: (Icon(Icons.favorite)),
        ),
      ],
    );

    return Stack(
      alignment: Alignment(0.0,1.3),
      children: <Widget> [
        image,
        card
      ],

    );
  }
}