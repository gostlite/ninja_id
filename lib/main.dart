import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:NinjaCard()
  ));
}
class  NinjaCard extends StatefulWidget {

  @override
  State<NinjaCard> createState() => _NinjaCardState();

}

class _NinjaCardState extends State<NinjaCard> {
  // const ({super.key});
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor:Colors.amberAccent,
        onPressed: ()=>{
          setState(() {
            ninjalevel+=1;
          })
        },
      ),
      backgroundColor: Colors.grey[500],
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
    centerTitle: true,
    title: Text("Ninja Id card",style: TextStyle(color: Colors.black),),
      elevation: 0.0,
    ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 10.0, 0.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            Center(child: CircleAvatar(backgroundImage: AssetImage("assets/down.png"),radius: 40,)),
            Divider(height: 60.0,
            color: Colors.amberAccent,),
            Text("Name", style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              letterSpacing: 2.0,
            ),),
          SizedBox(height: 2.0,) ,
          Text("John Adeleke",style: TextStyle(
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 2

          ),),
            SizedBox(height:30),
            Text("Ninja Level", style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              letterSpacing: 2.0,
            ),),
            SizedBox(height: 2.0,) ,
            Text('$ninjalevel',style: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 2

            ),),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amberAccent,
                ),
                SizedBox(width: 10,),
                Text("mrjohn.soft@gmail.com")
              ],
            )
          ],
        ),
      )

    );
  }
}

