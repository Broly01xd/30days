import 'package:flutter/material.dart';
import 'package:flutter_catlg/utils/routes.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
    //   child:Center(
    //     child:Text(
    //       "Login Page",
    //       style: TextStyle(
    //         fontSize: 20,
    //         Color:Colors.pinkAccent,
    //         fontWeight: FontWeight.bold,
    //       ),
    //     ),
    //   ),
    // );
          //textScaleFactor: 3.0,
      // color:Colors.white,
      child: Column(
        children:[
          Image.asset("rout/images/undraw_wedding_re_66hj.png",fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
            ),
          Text(
            "Welcome $name ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
      
          SizedBox(
            height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
           
              TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "username",
               ), 
               onChanged: (value) {
                 name = value;
                 setState(() {
                   
                 });
               },
            ),


            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "password",
               ),
            ),
            SizedBox(
            height: 20.0,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed((seconds :1));
                Navigator.pushNamed(context, MyRoutes.homeRoute );
              },
              child:AnimatedContainer(
                duration: Duration(seconds: 1),
              width: changeButton?50: 150,
              height: 50,
              color: Colors.pinkAccent,
              alignment: Alignment.center,
              child:changeButton?Icon(Icons.done,color: Colors.white,): Text(
                "Login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
              ),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(changeButton?50:8)
              ),
              ),
            ),

            

            // ElevatedButton( 
            //   child:Text("Login"),
            //   style: ButtonStyle(), 
            // onPressed: () {
            //   Navigator.pushNamed(context,MyRoutes.homeRoute);
            // },
            // )
            ],
            ),
            )
            ],
      ));
  }
}






         