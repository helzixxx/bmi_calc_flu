import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onPress, required this.buttonTitle});

  final VoidCallback? onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress!(),
      child: Container(
        color: kBottomContainerColor,
        margin: kBottomContainerMargin,
        padding: kBottomContainerPadding,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
