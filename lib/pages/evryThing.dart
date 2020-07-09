
import 'package:Test_Api/pages/sourcepage.dart';
import 'package:flutter/material.dart';
import 'package:Test_Api/services/loading.dart';


class EveryThing extends StatefulWidget {
  @override
  _EveryThingState createState() => _EveryThingState();
}

class _EveryThingState extends State<EveryThing> {


List<EvryModel> articalModel =new List <EvryModel>();
 bool _loading = true;


 @override
  void initState() {
    
    super.initState();
    setEvryThing();
  }
     setEvryThing() async{


  Evrys evrys =Evrys();
  await evrys.getEvryThing(); 
  articalModel =evrys.evrys;

setState(() {
  _loading= false; 

articalModel =evrys.evrys;
});

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(


appBar: AppBar(
backgroundColor: Colors.indigo[500],
title:Text( 'EvryThing ',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white ),),
centerTitle:true,
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
  
  
  
  //Text(articalModel[index].title);
  
  
  
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







drawer:   Drawer(
    child: Column(
  
    children: <Widget>[
  
  SizedBox(height: 50.0, ),
  
  ListTile(
    
    trailing: Icon( Icons.new_releases, size: 40.0,color: Colors.black87),
     title: Text('Top Headlines', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.black87 )),
     onTap: ()=> Navigator.pushNamed(context,'/ArticalView' ),
     
     ),
  
 Divider( thickness:2.0 , color:Colors.black87 ,),
  
  ListTile(
    trailing: Icon( Icons.category, size: 30.0,color: Colors.black87,),
     title: Text('Everything', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.black87 )),
     onTap: ()=> Navigator.pushNamed(context,'/evryThing' ),
     
     
     ),
  
  Divider( thickness:2.0 , color:Colors.black87 ,),
  
  ListTile(
    trailing: Icon( Icons.arrow_forward, size: 30.0,color: Colors.black87,),
     title: Text('Source', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.black87 )),),
  
 Divider( thickness:2.0 , color:Colors.black87 ,),
  
  ListTile( 
    
    trailing: Icon( Icons.search, size: 30.0,color: Colors.black87,),
    title: Text('Search', style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,color: Colors.black87)),
    
    onTap: (){

Navigator.pushNamed(context,'/search_page');

    },
    
    
    ),
  
  
    ],
  
  
  
    ),
  ),



















  );
  }
}






    