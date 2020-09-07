import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild; // allows for adding child to custom widget
  final Function onPress; // function to be called when widget is pressed

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour, // when using box decoration, color goes in here
          borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}