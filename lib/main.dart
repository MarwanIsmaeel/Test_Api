



import 'package:Test_Api/pages/evryThing.dart';
import 'package:Test_Api/pages/home.dart';


import 'package:Test_Api/pages/ArticalVeiw.dart';
import 'package:Test_Api/pages/search_page.dart';
import 'package:flutter/material.dart';




void main() => runApp(MaterialApp(

initialRoute: '/evryThing',
routes: {


'/' :  (context)=> ArticalView(),
'/home' : (context) => Home(),

'/ArticalView' :  (context)=> ArticalView(),


'/evryThing' :  (context)=> EveryThing(),
'/search_page' : (context)=> SearchPage(),

},

));

