
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Evrys {


 List<EvryModel> evrys=[];






Future <void> getEvryThing() async {

  try {
String url ="https://newsapi.org/v2/everything?q=bitcoin&from=2020-06-10&sortBy=publishedAt&apiKey=0942ef391fc54af096c746efad8c3957";


print(url);
 var response = await http.get(Uri.encodeFull(url));


var jsonData =jsonDecode(response.body);


if(jsonData['status'] == "ok"){


jsonData["articles"].forEach((element){

if(element['urlToImage'] != null && element['description'] != null ){

EvryModel articalModel = EvryModel (


title: element['title'],
author: element['auther'],
description: element['description'],
url: element["url"],
urlToImage: element["urlToImage"],

);

evrys.add(articalModel);


 
}
}
);

}



  
} catch (e) {


  Text("cant't connect to the server !");
}
}// the end of fetchData function
















 }// the end of News class
  




























class EvryModel {

 String  title;
  String  description;
  String url;
  String urlToImage;
 String content;
String  author;


  EvryModel({this.title,this.author,this.content,this.description,this.url,this.urlToImage});


}










