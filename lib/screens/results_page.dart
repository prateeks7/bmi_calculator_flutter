import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.resultText,@required this.bmiResult,@required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text('Your Result', style: kTitleTextStyle,)),
          Expanded(
            flex:5,
            child: ReusableCard(
              color: kactiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(resultText.toUpperCase(),style: kresultTextStyle,),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),


                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',ontap: (){
            Navigator.pop(context);
          },)
        ],
      )
    );
  }
}
