


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


import 'dart:convert';

class SearchClass {






 List< SearchModel> news=[];


Future <void> searchData (String category) async {


try {
  


String url ="https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=0942ef391fc54af096c746efad8c3957";


print(url);
 var response = await http.get(Uri.encodeFull(url));


var jsonData =jsonDecode(response.body);


if(jsonData['status'] == "ok"){


jsonData["articles"].forEach((element){

if(element['urlToImage'] != null && element['description'] != null ){

 SearchModel articalModel =  SearchModel (


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

Text("there was error to get data from server");

}



}







 }
  











class SearchModel {

 String  title;
  String  description;
  String url;
  String urlToImage;
 String content;
String  author;


   SearchModel({this.title,this.author,this.content,this.description,this.url,this.urlToImage});


}
