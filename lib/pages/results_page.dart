import 'package:flutter/material.dart';
import 'package:bmi_calc_flu/components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.bmiNumber,
      required this.interpretation});

  final String bmiResult;
  final String bmiNumber;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiNumber,
                    style: kResultNumberTextStyle,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Normal BMI range:',
                        style: kBmiRangeTextStyle,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '18,5 - 25 kg/m2',
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE YOUR BMI',
          ),
        ],
      ),
    );
  }
}
