import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:praeto_final_project/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container( 
        decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [darkBlue, warmBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
          ),
    
        child: Center(child: Column( mainAxisAlignment: MainAxisAlignment.center, children :[
            Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            height: 480,
            decoration :BoxDecoration(color:  neutralBlue, borderRadius: BorderRadius.circular(10)),
            child: ListView(  
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(vertical: 34, horizontal: 40),
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text('Login', style: TextStyle(
                  fontFamily: 'PoetsenOne', fontSize: 30, color: darkBlue
                  ))
                ),
            
                SizedBox(height: 40),

                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: neutralBlue,
                    boxShadow: [BoxShadow(color: darkBlue.withOpacity(0.5), offset: Offset(0, 4), blurRadius: 2)],
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Username',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat', fontSize: 10, fontWeight: FontWeight.w700, color: darkBlue),
                      border: InputBorder.none),
                      
                    )
                ),

                 const SizedBox(height: 40),

                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: neutralBlue,
                    boxShadow: [BoxShadow(color: darkBlue.withOpacity(0.5), offset: Offset(0, 4), blurRadius: 2)],
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat', fontSize: 10, fontWeight: FontWeight.w700, color: darkBlue),
                      border: InputBorder.none),
                      
                    )
                ),

                const SizedBox(height: 50),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: Text('Login', style: TextStyle(
                      fontFamily: 'PoetsenOne', fontSize: 20, color: warmBlue
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: darkBlue, 
                    padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  )
                )
                

              ],
            )
          ),

          SizedBox(height: 20),
          
          RichText(text: TextSpan(text: 'Create new Account?', style: TextStyle(
            fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w700, decoration: TextDecoration.underline
          ),
          recognizer: TapGestureRecognizer()..onTap = () {
            Navigator.pushNamed(context, '/register');
          }
          ))

      ]))
    ));
  }
}