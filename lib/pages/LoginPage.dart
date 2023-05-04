import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child:Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                child : Image.asset("images/login.png"),
                  ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                   color: Color(0xFFF5F9FD),
                   borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,

                    )
                  ],
                ),
                  child: Row(
                    children: [
                      Icon(
                      Icons.person,
                      size: 24,
                      color: Color(0xFF475269),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Username",
                        ),
                      ),
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                     color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius : 5,
                      spreadRadius: 1
                    ),
                    
                  ],
                ),
                child: Row(children: [
                  Icon(
                    Icons.lock,
                    color: Color(0xFF475269),
                    size: 24,
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 250,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter password",
                        ),
                      ),
                    ),
                ]),
              ),
             SizedBox(height: 10,),
             Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: TextButton(
                 onPressed: () {  },
                child: Text(
                  'Forget Password?',
                style: TextStyle(
                  color: Color(0xFF475269),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,

                ),
                )
              ),
             ),
             SizedBox(height: 40,),
             InkWell(
              onTap:()
              {
                Navigator.pushNamed(context, "homePage");
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF475269),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]
                ),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),

              ),
              ),
             ),
             SizedBox(height: 50,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?  ", style: TextStyle(
                    color: Color(0xFF475269),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                TextButton(onPressed: (){},
                 child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                
                 ),

                ),
              
              ],
             ),

              ],

            ),
            )
           ),
    );
  }
}