import 'package:flutter/cupertino.dart';
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
  backgroundColor: Colors.cyan[900],
title : Row(
  
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[

Text('News ', style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.bold,color: Colors.red )),
Text('App  ', style: TextStyle(fontSize: 30.0,fontWeight:FontWeight.bold,color: Colors.blue),),

],),

centerTitle: true,
elevation: 0.0,
),




  drawer:   Drawer(
    child: Column(
  
    children: <Widget>[
  
  SizedBox(height: 50.0, ),
  
  ListTile(
    
    trailing: Icon( Icons.new_releases, size: 40.0,color: Colors.indigo,),
     title: Text('Top Headlines', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.indigo[900] )),
     onTap: ()=> Navigator.pushNamed(context,'/ArticalView' ),
     
     ),
  
 Divider( thickness:5.0 , color:Colors.deepOrange ,),
  
  ListTile(
    trailing: Icon( Icons.category, size: 40.0,color: Colors.indigo,),
     title: Text('Everything', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.indigo[900] )),
     onTap: ()=> Navigator.pushNamed(context,'/evryThing' ),
     
     
     ),
  
  Divider( thickness:5.0 , color:Colors.deepOrange ,),
  
  ListTile(
    trailing: Icon( Icons.arrow_forward, size: 40.0,color: Colors.indigo,),
     title: Text('Source', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.indigo[900] )),),
  
 Divider( thickness:5.0 , color:Colors.deepOrange ,),
  
  ListTile( 
    
    trailing: Icon( Icons.search, size: 40.0,color: Colors.indigo,),
    title: Text('Search', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.indigo[900])),
    
    onTap: (){

Navigator.pushNamed(context,'/search_page');

    },
    
    
    ),
  
  
    ],
  
  
  
    ),
  ),
 













body: Column(

children: <Widget>[


Text("Helloo")


],

),




 


















    );
  }
  
}