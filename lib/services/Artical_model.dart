
import 'dart:convert';

import 'package:http/http.dart' as http;

class News {


 List<ArticalModel> news=[];





Future <void> fetchData () async {
String url ="http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0942ef391fc54af096c746efad8c3957";





print(url);
 var response = await http.get(Uri.encodeFull(url));


var jsonData =jsonDecode(response.body);






















if(jsonData['status'] == "ok"){


jsonData["articles"].forEach((element){

if(element['urlToImage'] != null && element['description'] != null ){

ArticalModel articalModel = ArticalModel (


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

}







// }
// else


// {

//   print(response.statusCode);
// }













// //   News({this.news});


// //   factory News.fromJson(List<dynamic>jsonData){




// // List <ArticalModel> news =new List<ArticalModel>();

// // news = jsonData.map((i) => ArticalModel.fromJson(i)).toList();
// // return new News(news: news);


 }
  











class ArticalModel {

 String  title;
  String  description;
  String url;
  String urlToImage;
 String content;
String  author;


  ArticalModel({this.title,this.author,this.content,this.description,this.url,this.urlToImage});


}

//  factory ArticalModel.fromJson( Map<String,dynamic> json){

//  return ArticalModel (
  
  
  
//     title: json['title'],

//   //  userId: json['userId'],
//   //  id: json['id'],
//    author: json ['author'] ,
//    description: json['descraption'],
//  url: json['url'],
//  urlToImage: json['urlToImage'],
//  content: json['content'],





//  );

//  }











