
import 'package:Test_Api/pages/sourcepage.dart';
import 'package:Test_Api/services/Search_model.dart';

import 'package:flutter/material.dart';





class SearchPage extends StatefulWidget {


String category ;
SearchPage({this.category});


  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


List< SearchModel> articalModel =new List < SearchModel>();

bool _loading = true;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
searchData();

  }

 searchData() async{


   SearchClass newsclass = SearchClass();
  await newsclass.searchData(widget.category); 
  articalModel =newsclass.news;

setState(() {
  _loading= false; 

articalModel =newsclass.news;
});

}





  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(

title :  Text(" Search Result "),



),



body: _loading ? Center(
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
  
  //  BlogTile(
  
  
  
  //  imageUrl: articalModel[index].urlToImage,
  
  // title: articalModel[index].title,
  
  
  
  
  
  
  
  
  
  
  
  // );
  
  
  
  
  
  
  
  
  
    }
  
    
  
    
  
    
  
  ),
  
    
  
  ),
),
),




    );
  }
}