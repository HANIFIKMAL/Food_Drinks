import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Beverage extends StatefulWidget {
  const Beverage({super.key});

  @override
  State<Beverage> createState() => _BeverageState();
}

class _BeverageState extends State<Beverage> {
  List<int> quantities = [0, 0, 0, 0];

  void _incrementQuantity(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (quantities[index] > 0) {
        quantities[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        for (int i=0;i<4;i++)
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
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "SingleItemPage"); // Change Later so can be push into specific page
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                        "lib/assets/beverage/$i.png",
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
                        "Beverage",
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
                        "Cold",
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