import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kReusableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultsTextStyle,
                  ),
                  Text(
                    '17.7',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is perfectly healthy, keep up your regular habits!',
                    textAlign: TextAlign.center,
                    style: kResultsBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}