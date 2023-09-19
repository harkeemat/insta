import 'package:flutter/material.dart';

import 'package:flutter_insta/flutter_insta.dart';
//import 'package:simple/drawer.dart';


class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FlutterInsta flutterInsta ;
    //TextEditingController _nameController = TextEditingController();
      
   
    var data;  
    var  username="";

   @override
    void initState() { 
      super.initState();
      flutterInsta = new FlutterInsta();
      data=getData();
      
    }
    getData() async {
      await flutterInsta.getProfileData('harkeematbhullar');
      data=flutterInsta.username;
         
    setState(() {
      
         
     
    }) ; 
    return flutterInsta.username;
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(title: Text("Trial App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0) ,
          child: data != null 
          ? ListView(children: [
            Title(color: Colors.black,
            child:Text(data),
            
            ),
          
          ],
          )
          
            :Center(
              
              child:CircularProgressIndicator(),
              ),
            ),
            
            
      );
    }
  }
  
  