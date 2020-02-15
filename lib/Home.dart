

import 'package:flutter/material.dart';

import 'package:gratitude_journal/gratitude_beads.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude Journal'),
        centerTitle: true,
        elevation: 0,
      ),
      body:

      GridView.count(primary: false,

      padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        crossAxisCount: 2,

        children: <Widget>[

          new InkWell(
                    onTap: (){
              print("Container clicked");
            Navigator.of(context).push(_createRoute());
              },
            child: new Card(

              clipBehavior: Clip.antiAlias,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8.0)
               ),

              color: Colors.teal[300],
                  child: new Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Stack(
                              children: <Widget>[
                                new Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4gEuYfFSLJY2TuYU2MpcKu-Y34gjsjOhIoONBA7lHH-tVnBw1'),
                                 new Center(

                                    child:
                                     Text(
                                           "Gratitude beads",

                                       textAlign: TextAlign.center,
                                           ),
                                    )
                    ]
                ),





              ]
          ),
        )
    ),

          InkWell(
            onTap: (){},
            child: new Card(
              color: Colors.teal[300],
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    new Stack(
                     children: <Widget>[

                           new Image.network('https://wellbeingcoaches.com/wp-content/uploads/2017/12/3.GratitudeJournal.jpg'),



                       new Text("Gratitude Journal")
                     ],
                   ),



                ],
              ),
            ),
          ),


        ],
      )
    );
  }
}


Route _createRoute(){
  return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation)=>GratitudeBeads(),
  transitionsBuilder: (context, animation, secondaryAnimation, child){
    var begin= Offset(0.0,1.0);
    var end = Offset.zero;
    var curve =Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(position: animation.drive(tween),child: child,);
  },

  );
  
}