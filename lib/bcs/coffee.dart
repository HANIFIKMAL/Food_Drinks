import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        for (int i=1;i<5;i++)
          Container(              
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ]
              ),
              child: Column(children: [
                InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "SingleItemPage");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                    "lib/assets/coffee/$i.png",
                    width: 120,
                    height:120,
                    fit: BoxFit.fill,
                    ),
                  ),
                ),
                 Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Coffee",
                        style: TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ),
                     Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Hot",
                        style: TextStyle(
                          fontSize:14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Padding(
                      padding:EdgeInsets.symmetric(vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RM10",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart_checkout,
                            size: 24,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
              ],
            ),
          )
      ],
    );
  }
}