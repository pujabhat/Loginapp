import 'package:flutter/material.dart';
import 'package:loginApp/screens/home_screen.dart';
TextStyle myStyle = TextStyle(fontSize: 25);
class LoginScreen extends StatefulWidget {
  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username;
  String password;
  
  @override
  Widget build(BuildContext context) {
     final usernameField =TextField(
       onChanged: (value) {
         setState(() {
           username=value;
         });
       },
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
    hintText: "Username",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32.0)
    ),
    ),
  );
  final passwordField =TextField(
     onChanged: (value) {
         setState(() {
           password=value;
         });
       },
    obscureText: true,
    style: myStyle,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
    hintText: "password",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32.0)
    ),
    ),
  );
  final myLoginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.green,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      onPressed: (){
if(username=='Pooja' && password=='pass1234'){
  Navigator.push(context, MaterialPageRoute(builder:(context)=> HomeScreen(username)));
}
else{
print("Login Failed");
}
      
      },
      child: Text('Login' ,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
     ),

  );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child:ListView(
             children: [
               Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
             children: [
               
               Icon(Icons.supervised_user_circle, size: 200,),
               SizedBox(height: 100),
               usernameField,
               SizedBox(height: 20),
               passwordField,
               SizedBox(height: 20),
               myLoginButton,
             ], 
            ),
             ], 
            )
              
            )
          ),
        ),
        );
      
            
    
  }
}