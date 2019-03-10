import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_drag/ItemDetails.dart';
import 'package:flutter_app_drag/Results.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
List<ItemDetails> draggedItem=new List();
int sum=0;
List<ItemDetails> listItem=[
  const ItemDetails("Medications",5,0.06, 5,"assets/meds.png","Pack all your medicines and your important"
      " pills in a vaccum container.Pack enough for a year as refill "
      "would mean supply from earth(minimum 7-8 months).",10),
  const ItemDetails("Clothing",5,0.024, 5,"assets/clothing.png","Pack at least 15-20 pairs"
      " of them buddy! Re-wearing each of them would be enough for your 2 and 1/2 year"
      " journey. Also, don’t forget to pack your pyjamas, as walking to the bathroom"
      " in the morning might involve facing 'a throng of crew members.'",10),
    const ItemDetails("SleepingBag",3,0.6, 5,"assets/sleepingBags.png","Space missions "
        "normally provide sleeping areas with beds to lie down for their passengers, but you don’t want to be "
        "the one to sleep on the floor in case that plan fails, do you?",5),
  const ItemDetails("HikingBoots",4,0.073, 5,"assets/hikingBoots.png","Space researchers"
      " will most certainly be provided with ultra high-quality and ultra durable "
      "“Space Boots”. Thus, nullifying the use of hiking boots but,  this can be"
      " useful in the long run if you think about it. Mars being a rocky planet,"
      " researching their would involve a lot of hiking. ",5),
  const ItemDetails("Toiletries",5,0.123, 5,"assets/toileteries.png","Personal hygiene"
      " is important, even in space. Don’t forget to pack your tooth brushes,"
      " tongue cleaners, floss, nail cutters, soaps, shampoos, razors, blades,"
      " shaving lubricants, deodorant, comb, mirrors etc. There"
      " won’t be extra and no one’s gonna want to share, Believe me.",10),
  const ItemDetails("Laptop",5,0.0342, 5,"assets/laptops.png","Very Essential item."
      " You need it for research, for communication and for entertainment, "
      "so there is no forgetting this. Also, where would you be viewing and editing all the cool “Martian” "
      "photos(assuming thousands of them) to post on Instagram.",10),
  const ItemDetails("GPS units",5, 0.004, 5,"assets/gps.png","Space researchers "
      "would be provided with GPS units. But still,"
      " it is recommended to carry your own in case of emergencies.",10),
  const ItemDetails("CannedFood",6, 0.03, 5,"assets/food.png","Canned Foods"
      " are going to be a luxury on Mars. In order to survive a trip to Mars,"
      " Earth food has to be shelf-stablefor at least a year, dehydrated if"
      " possible, else canned. They have high shelf life. Making matters worse, the human "
      "sense of taste and smell diminishes dramatically in space.",10),
  const ItemDetails("Smartphone",15,0.0053, 5,"assets/smartphone.png","It’s a shame you "
      "can’t post pictures from mars, but a smart choice. The phone can be used as"
      " a navigational device, media player, an ebook reader and so much more. So "
      "Jack up your phone and download "
      "loads of apps as there would be a lot of sitting around there.",10),
  const ItemDetails("Parachutes",5,0.00432, 5,"assets/parachutes.png","The landers"
      " would be severed from the parachute when their descent speed dropped below"
      " 14 mph. The landers were supposed to hit the surface at less than"
      " 27 mph;a‘displacement bag’ beneath them would absorb some of the shock."
      "",10),
  const ItemDetails("Books",2,0.0294, 5,"assets/books.png","During 2 and 1/2 year journey"
      " in an alien planet, these are going to be your best friends. But they most definitely are"
      " going to take up space. So don’t pack too many of those.",-2),
  const ItemDetails("Alcohol",2,0.0342, 5,"assets/Alcohol.png","Biggg Noo!!!",-5),
  const ItemDetails("FireArms",4,0.05, 5,"assets/fi.png","They are a big no no as per"
      " Space Expedition policies. Sorry for bursting"
      " your dream of being a part of the intergalactic wars.",-5),
 /* const ItemDetails("Fire starters:",0,0.00067, 5,"assets/.png","Fire needs oxygen"
      " to burn. The Martian atmosphere is 1/100th of the density of the Earth’s"
      " (i.e. 1/100th as much gas) and 95% of it is carbon dioxide, which is"
      " used to make fire extinguishers. As soon as the window is broken, all the "
      "terrestrial atmosphere will disappear out "
      "of it, fast (whoosh…). With no oxygen, fire cannot burn.",-7)*/];


Widget textreturn(int pos)
{
  return new Text(listItem[pos].getName(),style: TextStyle(fontSize: 8),) ;
}
Widget dragreturn(int pos){
  return LongPressDraggable(
    hapticFeedbackOnStart: true,
    data:pos.toString()
    ,
    child: Container(
      child: new Image(image: AssetImage(listItem[pos].getImage()),
        height: 50.0,
        width: 50.0,
        fit: BoxFit.scaleDown,),
    ),
    feedback: Container(
        child: new Image(image: AssetImage(listItem[pos].getImage()),
          width: 50.0,
          height: 50.0,
          fit: BoxFit.cover,)
    ),
    childWhenDragging: Container(
        child: new Image(image: AssetImage(listItem[pos].getImage()),
          width: 50.0,
          height: 50.0,
          fit: BoxFit.cover,)
    ),

  );

}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My app",

      theme: new ThemeData(
          brightness:Brightness.dark,
          accentColor: Colors.tealAccent,
          primarySwatch: Colors.teal
      ),
      home: new Item(),
    );
  }
}
class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}


class _ItemState extends State<Item> {

double val=0.0;
  Widget textDel(int pos)
  {
    return new Text(draggedItem[pos].getName()) ;
  }
  Widget objectDel(int pos)
  {
    return LongPressDraggable(
      hapticFeedbackOnStart: true,
      data:pos.toString()
      ,
      child: Container(
        child: new Image(image: AssetImage(draggedItem[pos].getImage()),
          height: 40.0,
          width: 35.0,
          fit: BoxFit.scaleDown,),
      ),
      feedback: Container(
          child: new Image(image: AssetImage(draggedItem[pos].getImage()),
            width: 40.0,
            height: 35.0,
            fit: BoxFit.scaleDown,)
      ),
      childWhenDragging: Container()


    );
  }
  // user defined function
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Score"),
          content: new Text("Your score is : "+sum.toString()),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
           new FlatButton(
            onPressed: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Results()),
              );
              
            },
               child: Text("Results"))

          ],
        );
      },
    );
  }
// flutter defined function
void fullShowDialog(){
    showDialog(
context: context,
builder: (BuildContext context) {
// return object of type Dialog
return AlertDialog(
title: new Text("Alert!!"),
actions: <Widget>[
  new Text("Box is full!! Please remove items")
// usually buttons at the bottom of the dialog



],
);
},
);
}
  @override
  Widget build(BuildContext context) {
    bool accepted = false;
    String d="";
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Bag Packing"),
     //   elevation: defaultTargetPlatform== TargetPlatform.android?5.0:0.0,
      ),

      body:new Stack(
        //fit: StackFit.expand,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: new AssetImage("assets/space.jpg"),
                    fit: BoxFit.fill)
              ),
            ),
            new Stack(
        children: <Widget>[

          new Container(
            margin: EdgeInsets.only(left: 5,top:13),
            //   color: Colors.deepPurple[200],
            decoration: BoxDecoration(
              color: Colors.deepPurple[800],
              borderRadius: new BorderRadius.only(
                  topLeft: const  Radius.circular(30.0),
                  topRight: const  Radius.circular(30.0),
                  bottomLeft: const  Radius.circular(30.0),
                  bottomRight: const  Radius.circular(30.0)

              ),
            ),
            height: 40,
            width: 85,
            child: Padding(padding: EdgeInsets.all(10),
            child:Text("My Items", style:TextStyle(fontSize: 15,fontStyle:FontStyle.italic),),)
          ),
          new Container(
              margin: EdgeInsets.only(left:270,top:13),
              //   color: Colors.deepPurple[200],
              decoration: BoxDecoration(
                color: Colors.deepPurple[800],
                borderRadius: new BorderRadius.only(
                    topLeft: const  Radius.circular(30.0),
                    topRight: const  Radius.circular(30.0),
                    bottomLeft: const  Radius.circular(30.0),
                    bottomRight: const  Radius.circular(30.0)

                ),
              ),
              height: 40,
              width: 85,
              child: Padding(padding: EdgeInsets.all(10),
                child:Text("My Box", style:TextStyle(fontSize: 18,fontStyle:FontStyle.italic),),)
          ),
          Container(
          margin: EdgeInsets.fromLTRB(5.0,60.0,10.0,15.0),
            height:450,
            width: 80,
               decoration: BoxDecoration(
              borderRadius: new BorderRadius.only(
                topLeft: const  Radius.circular(30.0),
                topRight: const  Radius.circular(30.0),
                bottomLeft: const  Radius.circular(30.0),
                bottomRight: const  Radius.circular(30.0)

              ),
              color: Colors.black26,
            ),

            child: ListView.builder(itemBuilder:(context,position){
            return Padding(padding: EdgeInsets.all(7.0),
                child:Column(
                            children: <Widget>[
               Padding(padding: EdgeInsets.all(10.0),
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    dragreturn(position),
                  textreturn(position),
                ],
                ),
               )
              ],
            ),
              );
          },
            itemCount: listItem.length,

             ),
          ),
           Container(
             margin: EdgeInsets.fromLTRB(98,100,0,0),
             child:
              Container(

                width: 180.0,
                height: 190.0,
                //color: Colors.black87,
                child:DragTarget(builder:(context, List<String> candidateData, rejectedData){
                return   Container(
                   // color: Colors.black,
                    height: 180,
                    width: 180,
                    child:  Image(image: AssetImage("assets/box.png"),
                      height: 80.0,
                      width: 20.0,

                      fit: BoxFit.scaleDown,)
                );
                },

                    onWillAccept: (data){
                  return true;
                    },
                  onAccept: ( data)
                  {

                    d=data;
                    int x=int.parse(data);
                    accepted=true;

                    setState(() {
                      if(val+listItem[x].getVolume()<=1) {
                        val += listItem[x].getVolume();
                        sum += listItem[x].getPoints();
                        draggedItem.add(new ItemDetails(
                            listItem[x].getName(),
                            listItem[x].getUtility()
                            ,
                            listItem[x].getVolume(),
                            listItem[x].getPreference(),
                            listItem[x].getImage(),
                            listItem[x].getDetails()
                            ,
                            listItem[x].getPoints()));
                      }
                      else
                        {
                          fullShowDialog();
                        }
                    });

                  },
                ) ,
          )
          ),
          Container(
            margin: EdgeInsets.only(left: 97,top: 300),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child:  LinearPercentIndicator(

                width: 140.0,
                lineHeight: 14.0,
                percent:val,
                center: Text(
                  "$val",
                  style: new TextStyle(fontSize: 12.0),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(290.0,60.0,0,15.0),
              height:340,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                    topLeft: const  Radius.circular(30.0),
                    topRight: const  Radius.circular(30.0),
                    bottomLeft: const  Radius.circular(30.0),
                    bottomRight: const  Radius.circular(30.0)

                ),
                color: Colors.black26,
              ),

              child: ListView.builder(itemBuilder:(context,position){
                return Padding(padding: EdgeInsets.all(4.0),
                  child:Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(4.0),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          objectDel(position),
                            //textDel(position)
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
                itemCount: draggedItem.length,

              ),

          ),
    Container(
    margin: EdgeInsets.fromLTRB(275,420,0,0),
    child:
    Container(

    width: 100.0,
    height: 100.0,
    //color: Colors.black87,
    child:DragTarget(builder:(context, List<String> candidateData, rejectedData){
    return   Container(
    // color: Colors.black,
    height: 100,
    width: 100,
    child:  Image(image: AssetImage("assets/trash.png"),
    height: 70.0,
    width: 20.0,

    fit: BoxFit.scaleDown,)
    );
    },

    onWillAccept: (data){
    return true;
    },
    onAccept: ( data)
    {
    d=data;
    int x=int.parse(data);
    accepted=true;
    setState(() {
      sum-=draggedItem[x].getPoints();
      val-=draggedItem[x].getVolume();
      draggedItem.removeAt(x);
    });
    },
    ) ,
    )
    ),

         Container(
           margin: EdgeInsets.fromLTRB(84, 500,0,0),
           child: RaisedButton(onPressed: _showDialog,
         child: new Text("Ready for the mission!",style: TextStyle(fontSize: 17,),),
            color: Colors.deepPurple[800],
            padding: EdgeInsets.all(13.0),
             splashColor: Colors.deepPurple[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)

              )
            ),

          )
         )
        ],
      )
          ]
      )
    );
  }
}
