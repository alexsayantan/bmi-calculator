import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kbottomContainerHeight,
        ),
      ),
    );
  }
}
