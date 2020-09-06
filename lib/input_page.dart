import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // icons
import 'gender_card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 65.0;
const reusableCardColor = Color(0xFF1D1E33);
const chosenGenderColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = reusableCardColor;
  Color femaleCardColor = reusableCardColor;

  // 0 = male, 1 = female
  void updateColor(int gender) {
    if (gender == 0) {
      if (maleCardColor == reusableCardColor && femaleCardColor == reusableCardColor) {
         // neither gender was selected yet
        maleCardColor = chosenGenderColor; 
      } else if (maleCardColor == reusableCardColor && femaleCardColor == chosenGenderColor) {
        // female was selected before
        maleCardColor = chosenGenderColor;
        femaleCardColor = reusableCardColor;
      }
      else {
        // male was selected before
        maleCardColor = reusableCardColor;
      }
    } else {
      if (femaleCardColor == reusableCardColor && maleCardColor == reusableCardColor) {
        // neither gender was selected before
        femaleCardColor = chosenGenderColor;
      } else if (femaleCardColor == reusableCardColor && maleCardColor == chosenGenderColor) {
        // male was selected before
        femaleCardColor = chosenGenderColor;
        maleCardColor = reusableCardColor;
      }
      else {
        // female was selected before
        femaleCardColor = reusableCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(0);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: GenderCardContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE'
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: GenderCardContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE'
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: reusableCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: reusableCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reusableCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity, // makes widget expand across the screen
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
