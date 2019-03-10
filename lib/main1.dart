import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_app_drag/main.dart';
void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  new ThemeData(
        brightness:Brightness.dark,
        accentColor: Colors.tealAccent,
        primarySwatch: Colors.teal
    ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          Center(
              child: FlareActor(
            "assets/login_screen_anim.flr",
            animation: "start",
            fit: BoxFit.contain,
          )),
          Container(
            alignment: AlignmentDirectional(0.0, 0.8),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                color: Colors.deepPurple[800],
                padding: EdgeInsets.all(13.0),
                splashColor: Colors.deepPurple[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: new Text(
                  "Trip To Mars",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Trip To Mars",
          style: TextStyle(fontSize: 19.0, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage("assets/space.jpg"),
                    fit: BoxFit.fill)),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: new Text(
              "Do you know!! It  takes Mars 687 Earth days to make its"
                  " journey  around the Sun. So to get to Mars, we blast off  from Earth going in the "
                  "same direction as Earth  and Mars are both traveling around the Sun, and by adding a little "
                  "speed using the spacecraft’s engines,  we eventually match up with Mars’orbit and catch  up to"
                  " Mars itself. If we don’t care about gas  mileage, we can really step on it and get there in "
                  " six months! A more fuel-efficient trip takes about  11 months.",
              style: TextStyle(

                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),



          Container(
            margin: EdgeInsets.only(top: 80.0,left: 60.0),
            child:new Image(image: AssetImage("assets/speech2.png"),
              height: 230.0,
              width: 200.0,),


          ),

          Container(
            margin: EdgeInsets.only(top: 190.0,left: 10.0),
            child:new Image(image: AssetImage("assets/boy.png"),
              height: 150.0,
              width: 100.0,),


          ),
          Container(
            margin: EdgeInsets.only(top: 270.0,left: 120.0),
            child:new Image(image: AssetImage("assets/speech3.png"),
              height: 160.0,
              width: 200.0,),


          ),
          Container(
            margin: EdgeInsets.only(top: 320.0,left: 155.0),
            child: Text("Yess!! Will you help me?",style: TextStyle(fontSize:10.0,fontWeight: FontWeight.bold,color: Colors.deepPurple,),),
          ),
          Container(
            margin: EdgeInsets.only(top: 160.0,left: 100.0),
            child: Text("Would you like to "
                "go to Mars?",style: TextStyle(fontSize:10.0,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
          ),
          Container(
            margin: EdgeInsets.only(top: 370.0,left: 250.0),
            child:new Image(image: AssetImage("assets/girl.png"),
              height: 150.0,
              width: 100.0,),


          ),

          Container(
            margin: EdgeInsets.only(top: 450,left:10.0),
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
                color: Colors.deepPurple[800],
                padding: EdgeInsets.all(13.0),
                splashColor: Colors.deepPurple[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child:
                new Text(
                  "Yep! Let's go",

                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontSize: 22.0,
                  ),
                )),

          ),



        ],
      ),

    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      body: GameRules(),
    );
  }
}

class GameRules extends StatefulWidget {
  @override
  _GameRulesState createState() => _GameRulesState();
}

class _GameRulesState extends State<GameRules> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Game Rules"),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
           // new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "Rules"),

            new Tab(
              text: "Points",
            ),
          ],
        ),

      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[

          new Rules(),
          //new Instructions(),
          new Points(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        foregroundColor: Colors.black,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),

          );},
      ),
    );
  }
}

class Rules extends StatefulWidget {
  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Text(
            "The player is on a space mission to Mars. And they have been provided with a box "
                "1 meter wide by 1 meter high by 1 meter  deep—in other words, having a volume "
                "of 1 cubic  meter (1 m3)(One meter is about 39-1/2 inches) within which they have"
                " to pack all the items that they want to take for the mission.The Players are need "
                "to choose the items, from the given set of options. All the choosen items must fit "
                " into a box.Each item would have their own volume which would be added to the to the"
                " box accordingly.The objective of the game is Packing the given box most efficiently "
                "and thereby gainning  most points!  ",style: TextStyle(
            fontSize: 22.0,
            fontStyle: FontStyle.italic
          ),
          )


    );
  }
}


class Points extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        Text(
          "[1]Item is  must according to ISS Standards : (+10)points.  "
              " [2]Item is  non essential but is used for recrational purposes : (+5)points"
              " [3]Item is restricted : (-5)points"
              " [4]Item takes more space can be replaced by some efficient items : (-2)points"
              " [5]Cookie Boxes :- This are items that work in more than one ways : (+20)points ",style: TextStyle(
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
        )


    );
  }
}


