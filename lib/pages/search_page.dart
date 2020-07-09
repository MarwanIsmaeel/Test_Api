

import 'package:Test_Api/services/Artical_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


List<ArticalModel> articalModel =new List <ArticalModel>();
List<String> titleList = titleList = [];
 List <String> recentCities = [];

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


@override
  void initState() {
    
    super.initState();
    getNews();
  }
     getNews() async{


  News newsclass =News();
  await newsclass.fetchData(); 
  articalModel =newsclass.news;
loop ();

setState(() {
articalModel =newsclass.news;

});

}

  loop (){

recentCities = titleList;
articalModel.forEach((m) { 

titleList.add(m.title);


});


  }



 


  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(

title:Text(" Search ") ,
centerTitle: true,
actions: <Widget>[
IconButton(icon: Icon (Icons.search), onPressed: (){

showSearch(context: context, delegate: DataSearch());



}),


],
),


    );
  }
}

class DataSearch extends SearchDelegate <String>{

//  final cities = [


// 'baghdad',
// 'basra',
// 'najaf',
// 'dyala',
// 'koot',
// 'nasria',

//  ];








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
    final suggestionList = query.isEmpty ? recentCities : titleList.where((m) => m.startsWith(query)).toList() ;



    //  .where((p) => p.startsWith(query)).toList() ;
    return ListView.builder(
      
      
      itemBuilder: (context,index) => ListTile(

leading: Icon(Icons.location_city),
title: Text(suggestionList[index]),
      ),
      
      itemCount: suggestionList.length,
      
      
      
      );
  }
}



