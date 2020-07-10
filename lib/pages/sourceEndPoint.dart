




import 'package:Test_Api/pages/sourcepage.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:Test_Api/services/sourceEndPointModel.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SourceEndPoint extends StatefulWidget {

String url;
 SourceEndPoint({this.url});

  @override
  _SourceEndPointState createState() => _SourceEndPointState();
}

class _SourceEndPointState extends State<SourceEndPoint> {





List<SoursEndPointModel> articalModel =new List <SoursEndPointModel>();
  bool _loading = true;
@override
  void initState() {
    
    super.initState();
    getNews();
  }
     getNews() async{


   SourcEndPoint newsclass = SourcEndPoint();
  await newsclass.fetchSourceData(); 
  articalModel =newsclass.news;

setState(() {
  
_loading =false;
articalModel =newsclass.news;
});

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
backgroundColor: Colors.indigo[500],
title:Text( ' Resources',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white ),),
centerTitle:true,

),
  body:

//  Container(
       
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
//        child: WebView(
//          initialUrl: articalModel;
//         onWebViewCreated: ((WebViewController webViewController){

//           _completer.complete(webViewController);


//         }),

//        ),
       
//        ),

//     );
    
  


//   }
// }



_loading ? Center(
  child:   Container(
  
  
  
  child: CircularProgressIndicator(),
  
  
  
  ),
)




: Center(

child:Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
    
  
  child: ListView.builder(
  
    itemCount: articalModel.length,
  
    shrinkWrap: true,
  
    itemBuilder: (context,index){
  
  
  
  return   
  
  Column(
  
    children: <Widget>[
  
          GestureDetector(


  onTap: (){

Navigator.push(context, MaterialPageRoute(
  
  builder: (context)=>    SourcePage(

url: articalModel[index].url

  ) , ),
  
  
  
  
  );


            },



                      child: ClipRRect(
              
              borderRadius:BorderRadius.circular(12) ,
              
              child: Image.network(articalModel[index].urlToImage)),
          ),
  
          Padding(
  
            padding: const EdgeInsets.all(1.0),
  
            child: ListTile(
              
              subtitle: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(articalModel[index].description),
              ),
              title: Text(articalModel[index].title,style: TextStyle(color: Colors.black,fontSize: 17.0),)),
  
          ),
  SizedBox(height:5.0 ),
  
  
    ],
  
  );
  
  
  
  
  
  
  
  
  
  
    }
  
    
  
    
  
    
  
  ),
  
    
  
  ),
),
),


  );
  }
}









 

  



























// import 'package:Test_Api/pages/sourcepage.dart';

// import 'package:Test_Api/services/sourceEndPointModel.dart';


// import 'package:flutter/material.dart';


// class ArticalView extends StatefulWidget {
//   @override
//   _ArticalViewState createState() => _ArticalViewState();
// }

// class _ArticalViewState extends State<ArticalView> {


 

// List<SoursEndPointModel> articalModel =new List <SoursEndPointModel>();
//  bool _loading = true;
// @override
//   void initState() {
    
//     super.initState();
//     getNews();
//   }
//      getNews() async{


//    SourcEndPoint newsclass = SourcEndPoint();
//   await newsclass.fetchSourceData(); 
//   articalModel =newsclass.news;

// setState(() {
//   _loading= false; 

// articalModel =newsclass.news;
// });

// }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

// appBar: AppBar(
// backgroundColor: Colors.indigo[500],
// title:Text( 'Top Headlines',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white ),),
// centerTitle:true,

// ),
// body: _loading ? Center(
//   child:   Container(
  
  
  
//   child: CircularProgressIndicator(),
  
  
  
//   ),
// )




// : Center(

// child:Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:   Container(
  
    
  
//   child: ListView.builder(
  
//     itemCount: articalModel.length,
  
//     shrinkWrap: true,
  
//     itemBuilder: (context,index){
  
  
  
//   return   
  
//   Column(
  
//     children: <Widget>[
  
//           GestureDetector(


//   onTap: (){

// Navigator.push(context, MaterialPageRoute(
  
//   builder: (context)=>    SourcePage(

// url: articalModel[index].url

//   ) , ),
  
  
  
  
//   );


//             },



//                       child: ClipRRect(
              
//               borderRadius:BorderRadius.circular(12) ,
              
//               child: Image.network(articalModel[index].urlToImage)),
//           ),
  
//           Padding(
  
//             padding: const EdgeInsets.all(1.0),
  
//             child: ListTile(
              
//               subtitle: Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Text(articalModel[index].description),
//               ),
//               title: Text(articalModel[index].title,style: TextStyle(color: Colors.black,fontSize: 17.0),)),
  
//           ),
//   SizedBox(height:5.0 ),
  
  
//     ],
  
//   );
  
  
  
  
  
  
  
  
  
  
//     }
  
    
  
    
  
    
  
//   ),
  
    
  
//   ),
// ),
// ),


//   );
//   }
// }




// class BlogTile extends StatelessWidget {

// final String title ,desc, imageUrl ;
// BlogTile({this.title,this.imageUrl,this.desc});

//   @override
//   Widget build(BuildContext context) {



//     return Container(
//       child: Column(
        
        
//         children: <Widget>[
// Image.network(imageUrl),
// Text(title),
// Text(desc),




//         ],),


//       );





 

//   }
//  }