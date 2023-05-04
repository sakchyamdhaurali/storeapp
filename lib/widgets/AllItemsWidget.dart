import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AllItemsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for(int i=1;i<5;i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 10),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFFF5F9FD),
            borderRadius: BorderRadius.circular(10),
             boxShadow: [BoxShadow(
              color: Color(0xFF475269).withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 1,
             ),
             
             ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Padding(
                  padding: EdgeInsets.all(9.5),
                  child: Image.asset(
                    "images/$i.png",
                    height: 130,
                    width: 130,
                  ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Nike Shoe",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF475269),
                    ),
                  ),
                ),
              ),

    Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "New Nike Shoe Men",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF475269).withOpacity(0.7),
        ),
      ),
    ),

Padding(
  padding: EdgeInsets.symmetric(vertical: 6),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
        Text(
          "\$55",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.redAccent,
          ),
        ),

        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
            ),
        child: Icon(
          CupertinoIcons.cart_fill_badge_plus,
          color: Colors.white,
          size: 28,
          ),
        ),



  ]),
),

            ],
          ),
        ),
      ],
    );
    
  
  }
}