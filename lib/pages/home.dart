
import 'package:Test_Api/pages/search_page.dart';
import 'package:Test_Api/pages/sourcepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';





class Home extends StatefulWidget {


String  title;
Home({this.title});


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


List<Home> list =[

Home(title: "business",),
Home(title: "entertainment",),
Home(title: "general",),
Home(title: "health",),
Home(title: "science",),
Home(title: "sports",),
Home(title: "technology",),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(



appBar: AppBar(
  backgroundColor: Colors.cyan[900],
title : Row(
  
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[

Text('News ', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.red )),
Text('App  ', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.blue),),

],),

centerTitle: true,
elevation: 0.0,

actions: <Widget>[
IconButton(icon: Icon (Icons.search), onPressed: (){

showSearch(context: context, delegate: DataSearch());



}),


],





),



body: ListView.builder(
  
  
  
  itemCount: list.length,
  itemBuilder: (context,index){


return Card(


   child: ListTile(

onTap: (){


return
Navigator.push(context, MaterialPageRoute(
  
   builder: (context)=>    SearchPage(

 category: list[index].title,

   ) ,) );
  

},

title: Text(list[index].title),


),


);



  }
  
  
  ),



    );
  }
  
}


class DataSearch extends SearchDelegate <String>{

 final category = [

 "business",
 "entertainment",
"general",
 "health",
  "science",
 "sports",
 "technology",


 ];


  final recentcategory = [


"science",
 "sports",
 "technology",


  ];





  @override
  List<Widget> buildActions(BuildContext context) {
      
     return [

IconButton(icon: Icon(Icons.clear),
 onPressed: (){

query= "";

 })

     ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
     
     return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, 
     progress: transitionAnimation,),
      onPressed: (){

         close(context, null);


      });
    }
  
  

  @override
  Widget buildResults(BuildContext context) {
      
     
    }
  
  

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty ? recentcategory : category.where((p)=>p.startsWith(query)).toList();



    //  .where((p) => p.startsWith(query)).toList() ;
    return ListView.builder(
      
      
      itemBuilder: (context,index) => ListTile(


onTap: 

(){


return
Navigator.push(context, MaterialPageRoute(
  
   builder: (context)=>    SearchPage(

 category: suggestionList[index]
 ,

   ) ,) );
  

},


        

leading: Icon(Icons.location_city),
title: Text(suggestionList[index]),
      ),
      
      itemCount: suggestionList.length,
     
      
      
      );
  }
}

