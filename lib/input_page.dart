import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // icons
import 'gender_card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 65.0;
const reusableCardColor = Color(0xFF1D1E33);
const chosenGenderColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? chosenGenderColor : reusableCardColor,
                    cardChild: GenderCardContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE'
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? chosenGenderColor : reusableCardColor,
                    cardChild: GenderCardContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE'
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
