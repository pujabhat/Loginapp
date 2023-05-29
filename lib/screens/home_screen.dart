import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  final String username;
  HomeScreen(this.username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        
        children: [
          SizedBox(height:20,),
          Center(child:Text('Welcome '+ username, style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}