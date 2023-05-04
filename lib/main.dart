import 'package:flutter/material.dart';
import 'package:nike_store_app/pages/LoginPage.dart';
import 'package:nike_store_app/pages/homePage.dart';
import 'package:nike_store_app/pages/itemPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFCEDDEE),
          ),
    
      routes: {
        "/":(context) => LoginPage(),
        "homePage":(context) => HomePage(),
        "itemPage":(context) => ItemPage(),

      },

    );
  
  }
  
}

  
