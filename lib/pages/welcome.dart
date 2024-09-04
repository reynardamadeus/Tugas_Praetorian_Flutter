import 'package:flutter/material.dart';
import 'package:praeto_final_project/colors.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration : BoxDecoration(
        gradient: RadialGradient(
          radius: 1.2,
          stops: [0.26, 0.56, 0.78, 1.0],
          colors: [catalinaBlue, persianBlue, shadeBlue, warmBlue]
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            
            Text('WALPEX', style: TextStyle(
            fontFamily: 'PoetsenOne', fontSize: 72,  color: neutralBlue
            )),

            const SizedBox(height: 45.0),

            Text('Your Best Choice for E-Wallet', style: TextStyle(
            fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.w700 , color: neutralBlue
            )),

            const SizedBox(height: 90.0),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Login', style: TextStyle(
                  fontFamily: 'PoetsenOne', fontSize: 20, color: darkBlue
              )),
              style: ElevatedButton.styleFrom(
                backgroundColor: neutralBlue, 
                padding: EdgeInsets.symmetric(horizontal: 70 , vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              )
            )
          ]
        )
      ),
      ),

    );
  }
}