import 'package:flutter/material.dart';

class DescriptionPLace extends StatelessWidget{

  String namePLace;
  int stars;
  String descriptionPlace;

  DescriptionPLace(this.namePLace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_half =  Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border =  Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePLace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_half
          ],
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
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
      ),
    );

    return Column(
      children: <Widget>[
        title_stars,
        description
      ],
    );
  }

}