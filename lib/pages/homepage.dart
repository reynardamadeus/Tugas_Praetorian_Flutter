import 'package:flutter/material.dart';
import 'package:praeto_final_project/colors.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: darkBlue),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning,', 
                      style: TextStyle(color: neutralBlue, fontFamily: 'Montserrat', fontWeight: FontWeight.w400, fontSize: 14)),
                      
                      Text('Reynard', 
                      style: TextStyle(color: neutralBlue, fontFamily: 'Montserrat', fontWeight: FontWeight.w700, fontSize: 14))    
                    ]
                  )),

                SizedBox(height: 20),

                Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Your Account Balance', 
                      style: TextStyle(color: neutralBlue, fontFamily: 'Montserrat', fontWeight: FontWeight.w700, fontSize: 14)),
                      SizedBox(height: 10),
                      Text('Rp 00.000,00', 
                      style: TextStyle(color: warmBlue, fontFamily: 'PoetsenOne', fontWeight: FontWeight.w700, fontSize: 32))    
                    ]
                  ))
              ],
            )
            ),
          
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(color: neutralBlue, 
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))),
              height: screenHeight * 0.7
            )
          ),

           Positioned(
            top: 0.25 *screenHeight,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: shadeBlue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                               color: Colors.black.withOpacity(0.25),
                              blurRadius: 4)
                        ]
                      ),
                      child: IconButton( icon: Icon(Icons.add), color: neutralBlue, iconSize: 70,
                      onPressed: () => Navigator.pushNamed(context, '/pay'),
                      )
                      ),
                      SizedBox(height: 10),
                      Text('Pay', style: TextStyle(
                        fontFamily: 'Montserrat',color: darkBlue, fontWeight: FontWeight.w700, fontSize: 14),)
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: shadeBlue,
                        borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4)
                          ]
                      ),
                      child: IconButton( icon: Icon(Icons.arrow_upward), color: neutralBlue, iconSize: 70,
                      onPressed: () => Navigator.pushNamed(context, '/topup'),
                      )
                      ),
                      SizedBox(height: 10),
                      Text('Top Up', style: TextStyle(
                        fontFamily: 'Montserrat',color: darkBlue, fontWeight: FontWeight.w700, fontSize: 14),)
                  ]
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: shadeBlue,
                        borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4)
                          ]
                      ),
                      child: IconButton( icon: Icon(Icons.settings), color: neutralBlue, iconSize: 70,
                      onPressed: () => Navigator.pushNamed(context, '/topup'),
                      )
                      ),
                      SizedBox(height: 10),
                      Text('Settings', style: TextStyle(
                        fontFamily: 'Montserrat',color: darkBlue, fontWeight: FontWeight.w700, fontSize: 14),)
                  ]
                )
              ],),
            )
          ),

        
        ],
      )
    );
  }
}