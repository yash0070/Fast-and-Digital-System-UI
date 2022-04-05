import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentValue = 0;

  List itemList = [
    {"image": "images/dollar.png", "title": "Payments"},
    {"image": "images/transfer.png", "title": "Transfer"},
    {"image": "images/bnkAcco1.png", "title": "BankAccount"}
  ];

  List personList = [
    {"perImage": "images/person1.png"},
    {"perImage": "images/person.png"},
    {"perImage": "imagesperson4.png"},
    {"perImage": "images/person2.png"},
    {"perImage": "images/person3.png"},
    {"perImage": "images/person4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Money Flow",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30.0,
                      ),
                    ),
                    Icon(
                      Icons.menu,
                      size: 40.0,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 210.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Balance',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.75),
                                    fontSize: 20,
                                  )),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.notification_add,
                                size: 30.0,
                                color: Colors.white.withOpacity(0.75),
                              ),
                              const CircleAvatar(
                                radius: 20.0,
                                backgroundImage:
                                    AssetImage('images/person.png'),
                                backgroundColor: Colors.transparent,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          "24,897",
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "****   3567",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 20.0),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 35.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Colors.yellow),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "USD",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_sharp,
                                        size: 40.0,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Statistics',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Slider(
                          value: _currentValue,
                          activeColor: Colors.yellow,
                          onChanged: (value) {
                            setState(() {
                              _currentValue = value;
                            });
                          }),
                      const Text(
                        "10.3K",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "10,597 expenses",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "available",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Services",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800),
                  ),
                  Icon(Icons.arrow_circle_right)
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 120.0,
                child: ListView.builder(
                  itemCount: itemList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 120.0,
                      width: 150,
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.5))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              itemList[index]["image"],
                              height: 50.0,
                              width: 50.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              itemList[index]["title"],
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Recent Transactions",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 70.0,
                child: ListView.builder(
                  itemCount: personList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70.0,
                      width: 70.0,
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage(personList[index]["perImage"]),
                              fit: BoxFit.fill)),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
