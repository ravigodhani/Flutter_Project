import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:user_login/widgets/customwidgets.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("assets/images/login.jpg")),
            Text("Login",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
             SizedBox(height: 15,),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email ID",
                    prefixIcon: Icon(CupertinoIcons.at),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF007DEF)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ))
                    ),
                    onPressed: () {}, 
                    child: Text("Login"),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Or, login with...",style: TextStyle(
                  color: Color(0xFF939393)
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomWidgets(imageaddress: "assets/images/google.png",),
                    CustomWidgets(imageaddress: "assets/images/facebook.png",),
                    CustomWidgets(imageaddress: "assets/images/apple.png",)
                  ],
                ),
                SizedBox(height: 25,),
                RichText(text: TextSpan(children: [
                  TextSpan(text: "New to codetech?",style: TextStyle(
                    color: Colors.black
                  )),
                  TextSpan(text: "Register",style: TextStyle(
                    color: Color(0xFF007DFE),
                    fontWeight: FontWeight.w500
                  ))
                ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}