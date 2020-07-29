import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'IconContent.dart';
import 'constants.dart';
import 'Results_Page.dart';
import 'package:slider/slider.dart';

int height = 180;
int weight = 60;
int age = 30;

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColor = kinActiveCardColor;
  Color femaleCardColor = kinActiveCardColor;

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bazzel',
            style: TextStyle(
              fontFamily: 'Fugaz',
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kactiveCardColor
                        : kinActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kactiveCardColor
                        : kinActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReUsableCard(
                color: kCC,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                        ),
                        Text(
                          ' cm',
                          style: klabelTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E98),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 9.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                            ),
                            child: Slider(
                              min: 120,
                              max: 220,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                              value: height.toDouble(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReUsableCard(
                      color: kCC,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                verChr: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                verChr: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReUsableCard(
                      color: kCC,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: klabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                verChr: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                verChr: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              child: Container(
                alignment: Alignment.center,
                child: Text('Calculate'),
                color: Colors.pink,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kbottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.verChr});

  final IconData icon;
  final Function verChr;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: verChr,
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
