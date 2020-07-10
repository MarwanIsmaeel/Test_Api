

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/cupertino.dart';


class SourcePage extends StatefulWidget {

final String url ;

SourcePage({this.url});


  @override
  _SourcePageState createState() => _SourcePageState();
}

class _SourcePageState extends State<SourcePage> {


  final Completer<WebViewController>_completer =Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
backgroundColor: Colors.indigo[500],
title:Text( 'Source ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white ),),
centerTitle:true,
),



 body:  Container(
       
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,
       child: WebView(

         initialUrl: widget.url ,
        onWebViewCreated: ((WebViewController webViewController){

          _completer.complete(webViewController);


        }),

       ),
       
       ),

    );
    
  


  }
}