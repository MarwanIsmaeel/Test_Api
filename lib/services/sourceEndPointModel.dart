
import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class SourcEndPoint {






 List<SoursEndPointModel> news=[];


Future <void> fetchSourceData () async {


try {
  


String url ="https://newsapi.org/v2/sources?apiKey=0942ef391fc54af096c746efad8c3957";


print(url);
 var response = await http.get(Uri.encodeFull(url));


var jsonData =jsonDecode(response.body);


if(jsonData['status'] == "ok"){


jsonData["articles"].forEach((element){

if(element['urlToImage'] != null && element['description'] != null ){

SoursEndPointModel articalModel = SoursEndPointModel (


title: element['title'],
author: element['auther'],
description: element['description'],
url: element["url"],
urlToImage: element["urlToImage"],

);

news.add(articalModel);





 
}
}
);

}



} catch (e) {

Text(" Couldn't connect to the server ");

}



}







 }
  











class SoursEndPointModel {

 String  title;
  String  description;
  String url;
  String urlToImage;
 String content;
String  author;


  SoursEndPointModel({this.title,this.author,this.content,this.description,this.url,this.urlToImage});


}












