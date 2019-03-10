
import 'package:flutter/material.dart';
import 'package:flutter_app_drag/ItemDetails.dart';
import 'package:flutter_app_drag/main.dart';
import 'package:flutter_app_drag/main1.dart';


class Results extends StatelessWidget {

  Widget ItemCard(int pos)
  {
     return new Container(
      height: 230.0,
      width: 280,

      margin: EdgeInsets.only(left:45),
      child: Column(

        children: <Widget>[
          Padding(
              padding:EdgeInsets.all(2.0),
              child:new Text("Name: "+draggedItem[pos].getName())),
        Padding(
               padding:EdgeInsets.all(2.0),
              child: new  Text("Volume: "+draggedItem[pos].getVolume().toString()),),
        Padding(
              padding:EdgeInsets.all(2.0),
              child: new Text("Utility: "+draggedItem[pos].getUtility().toString())),

          Padding(
              padding:EdgeInsets.all(2.0),
              child: new Text("Points: "+draggedItem[pos].getPoints().toString())),
          Padding(
              padding:EdgeInsets.only(top: 45,left: 8,right: 8),
              child: new Text("Details: "+draggedItem[pos].getDetails().toString(),style: TextStyle(fontSize: 13),))//

        ],
      ),

      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(40.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.deepPurple[300],
            blurRadius: 30.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

  }

  Widget ImageThumbnail(int pos)
  {
    final planetThumbnail = new Container(
      margin: EdgeInsets.only(left:5,top:25),
      //color: Colors.red,
      //alignment: FractionalOffset.,
      child: new Image(
        image: new AssetImage(draggedItem[pos].getImage()),
        height: 92.0,
        width: 92.0,
      ),
    );
    return planetThumbnail;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Results"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      
      body:
          Container(

            decoration: BoxDecoration(
          image: DecorationImage(image: new AssetImage("assets/space.jpg"),
          fit: BoxFit.fill
          )
            ),
          child: new Stack(
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  ListView.builder(itemBuilder:(context,position){
                    return Padding(padding: EdgeInsets.all(7.0),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10.0),
                            child:Stack(

                              children: <Widget>[

                                ItemCard(position),
                                Stack(
                                  children: <Widget>[
                                    ImageThumbnail(position),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                    itemCount: draggedItem.length,
                  )],
              ),

            ],
          )
        
      ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp1()),
          );
        },
          child: new Icon(Icons.arrow_forward_ios),
        ),
    );

  }
}
