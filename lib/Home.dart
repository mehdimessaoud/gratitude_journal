import 'package:flutter/material.dart';

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

                new Text("Gratitude beads"),
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
                  new Text("Gratitude Journal")
                ],
              ),
            ),
          ),


        ],
      )
    );
  }
}
