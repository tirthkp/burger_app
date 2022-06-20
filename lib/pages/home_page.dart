// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:burger_app/utils/category_card.dart';
import 'package:burger_app/utils/fav.dart';
import 'package:burger_app/utils/restraunts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Tirth,',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xFFD94A17),
                        size: 23,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(
                        imgpath: 'lib/icons/burger.png',
                        title: 'Fast Food',
                        color: Color.fromARGB(255, 181, 83, 47),
                      ),
                      CategoryCard(
                        imgpath: 'lib/icons/health.png',
                        title: 'Healthy Food',
                        color: Colors.lightGreen,
                      ),
                      CategoryCard(
                        imgpath: 'lib/icons/grapes.png',
                        title: 'Fresh Fruits',
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Favorite',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Favorite(
                        imgpath: 'lib/images/burger.jpg',
                        name: 'Cheese Burger',
                        subname: 'Fresh Patty',
                        rating: '4.5 ⭐',
                        price: '15.00',
                      ),
                      Favorite(
                        imgpath: 'lib/images/pasta.jpg',
                        name: 'Latina Pasta',
                        subname: 'Fresh Vegetables',
                        rating: '4.7 ⭐',
                        price: '12.00',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'More Restruants',
                      style: TextStyle(
                        color: Color.fromARGB(255, 86, 77, 77),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color.fromARGB(255, 201, 123, 5),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Restruants(
                  imgpath: 'lib/images/burger1.jpg',
                  resname: 'Burger Queen',
                  rating: '4.5 ⭐',
                  distance: '2.2km',
                  price: '12.00',
                ),
                Restruants(
                  imgpath: 'lib/images/pizza.png',
                  resname: 'Delicious Pizza',
                  rating: '4.1 ⭐',
                  distance: '3.1km',
                  price: '14.00',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
