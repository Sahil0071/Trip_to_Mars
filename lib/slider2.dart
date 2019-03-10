import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

void main(){
  runApp(new MaterialApp(
    home: new MainActivity(),
  ));
}
class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Linear Percent Indicators"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                center: Text(
                  "50.0%",
                  style: new TextStyle(fontSize: 12.0),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: 170.0,
                animation: true,
                animationDuration: 1000,
                lineHeight: 20.0,
                leading: new Text("left content"),
                trailing: new Text("right content"),
                percent: 0.2,
                center: Text("20.0%"),
                linearStrokeCap: LinearStrokeCap.butt,
                progressColor: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2000,
                percent: 0.9,
                center: Text("90.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.8,
                center: Text("80.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                   LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.2,
                    progressColor: Colors.red,
                  ),
                   LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.5,
                    progressColor: Colors.orange,
                  ),
                  LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.blue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  }



