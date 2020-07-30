import 'package:bmicalculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/ReusableCard.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bazzel',
          style: TextStyle(fontFamily: 'Fugaz'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReUsableCard(
              color: kactiveCardColor,
              cardChild: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 120, bottom: 40),
                    child: Text(
                      'ABOUT',
                      style: kTitleTextStyle,
                    ),
                  ),
                  Text(
                    'Thank You',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('For Using The Bazzel Body Mass Index Calculator'),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '\"And Cutu You Are My Motivation',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'IntroScriptDemo',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You Are My Everything',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'IntroScriptDemo',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'I Love You Mera Baccha  urf  Wife  urf  Jaan\"',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'IntroScriptDemo',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 279),
                    child: Text(
                      'DEVELOPED  BY  SAYANTAN SAHA',
                      style: TextStyle(
                        fontFamily: 'Track-Regular',
                        color: Colors.white24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
