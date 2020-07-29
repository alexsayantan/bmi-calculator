import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({@required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: color,
        ),
      ),
    );
  }
}
