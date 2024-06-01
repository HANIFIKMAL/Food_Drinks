import 'package:bv_snacks/bcs/bv.dart';
import 'package:bv_snacks/bcs/coffee.dart';
import 'package:bv_snacks/bcs/food.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 3,
      child: Scaffold(
     body: SafeArea(
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Order Here",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                      size: 30,
                    ),
                  )
                ],
                ),
              ),
              const SizedBox(height: 20),
              const TabBar( 
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 20),
                tabs: [
                  Tab(text: "Beverage"),
                  Tab(text: "Coffee"),
                  Tab(text: "Foods"),
                ],
              ),
              const Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    Beverage(),
                    Coffee(),
                    Foods(),
                  ],
                  )
                )
            ],
        ),
        ),
     )
      )
    );
  }
}