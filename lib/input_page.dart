import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'gender_widget.dart';
import 'gender_type.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const EdgeInsets bottomContainerMargin = EdgeInsets.only(top: 10.0);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;

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
                          selectedGender = GenderType.male;
                        });
                      },
                      color: selectedGender == GenderType.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: GenderWidget(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      color: selectedGender == GenderType.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: GenderWidget(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: activeCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: bottomContainerMargin,
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
