import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../widgets/RowItemsWidget.dart';
import '../widgets/AllItemsWidget.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
            children: [
              //Custom App Bar
              Padding(padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                     BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                    ]
                  ),
                  child: Icon(
                    Icons.sort,
                    size: 30,
                    color: Color(0xFF475269),
                  ),
                 ),
                 Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                     BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                    ]
                  ),
                    
                child: badges.Badge(
                  badgeStyle: badges.BadgeStyle(badgeColor: Colors.redAccent),
                  badgeContent: Text(
                    '3', style: TextStyle(
                      color: Colors.white,
                    )
                    ,
                    ),
                
                  child: Icon(Icons.notifications,
                  size: 30,
                  color: Color(0xFF475269),
                  ),
                ),
                
                    
                  ),
                 



                ],
              ),
              ),

              SizedBox(height: 15,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color:  Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                         
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search,
                  size: 26.5,
                  color: Color(0xFF475269),
                  )
                ],
              ),

              ),
            SizedBox(height: 30,),
            RowItemsWidget(),
            SizedBox(height: 20,),
            AllItemsWidget(),
            ],
        ),)),
    );

}


}