import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class botNavbar extends StatefulWidget {
  const botNavbar({super.key});

  @override
  State<botNavbar> createState() => _botNavbarState();
}

class _botNavbarState extends State<botNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:90,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(children: [
            Text("Total Price",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text("RM10",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400
             ),
            ),
          ]
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Row(
                children: [
                  Text(
                    "BUY NOW",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      CupertinoIcons.cart_fill,
                      color: Colors.white,
                    )
            
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}