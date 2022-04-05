import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app_1/HomePage.dart';
import 'package:flutter_app_1/bottomNavigationBar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // List accountList = [
  //   {'images': 'images/arrowback.png', 'title': 'Income', 'amount': '24,324'},
  //   {
  //     'images': 'images/lowerArrow.png',
  //     'title': 'Expenses',
  //     'amount': '10,564'
  //   },
  //   {
  //     'images': 'images/creditcard.png',
  //     'title': 'Credit used',
  //     'amount': '1.132'
  //   },
  //   {
  //     'images': 'images/available.png',
  //     'title': 'Availability',
  //     'amount': '8,987'
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar(0)));
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    Row(
                      children: [
                        Container(
                          height: 40.0,
                          width: 120.0,
                          padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.75)),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: const Text(
                            "This month",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Image.asset(
                          "images/notification.png",
                          height: 30.0,
                          width: 30.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 220.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 241, 221, 215),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Analyze",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            Image.asset(
                              "images/orange.png",
                              height: 13.0,
                              width: 10.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              "Income",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "images/blueDot.png",
                              height: 15.0,
                              width: 15.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              "Expanses",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                "August",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20.0,
              ),
              MonthlyList(
                image: "images/upperArrow.png",
                title: "Income",
                amount: "23,543",
              ),
              const Divider(
                height: 30,
                thickness: 2,
              ),
              MonthlyList(
                image: "images/lowerArrow.png",
                title: "Expenses",
                amount: "10,234",
              ),
              const Divider(
                height: 30,
                thickness: 2,
              ),
              MonthlyList(
                image: "images/creditcard.png",
                title: "Credit used",
                amount: "1.657",
              ),
              const Divider(
                height: 30,
                thickness: 2,
              ),
              MonthlyList(
                image: "images/available.png",
                title: "Available",
                amount: "8,678",
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Notification",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10.0),
              Stack(
                children: [
                  Container(
                    height: 130.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            "images/star1.png",
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Open your business account within minutes",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Open account",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MonthlyList extends StatelessWidget {
  MonthlyList({required this.image, required this.title, required this.amount});

  final String image;
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 25.0,
                  width: 25.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(0.6)),
                )
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
