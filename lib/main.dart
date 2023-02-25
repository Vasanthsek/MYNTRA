import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myntra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final PageController _controller = PageController();
 
  List fis = [
    "images/istockphoto-691910449-1024x1024.jpg",
    "images/istockphoto-1334808715-1024x1024.jpg",
    "images/istockphoto-890289344-1024x1024.jpg",
    "images/istockphoto-1041286698-1024x1024.jpg",
    "images/istockphoto-1131193457-1024x1024.jpg",
    "images/istockphoto-1334933118-1024x1024.jpg",
    "images/istockphoto-691910449-1024x1024.jpg",
    "images/istockphoto-691910449-1024x1024.jpg",
  ];
  List first = [
    "MEN",
    "WOMEN",
    "KIDS",
    "BEAUTY",
    "FOOTWEAR",
    "ACCESSORIES",
    "JEWELLERY"
  ];
  List val = ["Men", "Women", "Kids", "Footwear", "Beauty"];
  List vall = [
    "Myntra Studio",
    "Myntra Mall",
    "Myntra Insider",
    "Giftcards",
    "Contact Us",
    "FAQ",
    "Legal"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Row(
          children: [
            Container(
                height: 30, child: Image.asset("images/download (1).png")),
            Text(
              " Myntra",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/markus-spiske-5UJbKYUjFCk-unsplash.jpg"),
                          fit: BoxFit.cover),
                    )),
                ...List.generate(5, (index) {
                  return ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text(
                      val[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
                Divider(thickness: 1),
                ...List.generate(
                  7,
                  (index) => ListTile(
                    title: Text(vall[index]),
                  ),
                ),
                Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/artem-beliaikin-49mCO5ZRQDk-unsplash.jpg"),
                          fit: BoxFit.cover),
                    )),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    7,
                    (index) => Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(fis[index].toString()),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                                color: Colors.amber),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(first[index].toString())
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(IconData(0xe3a6, fontFamily: 'MaterialIcons'),
                        color: Colors.white, size: 30),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Express",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 20,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Text(
                      "3 DAYS DELIVERY",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: Colors.amber[100]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/istockphoto-1371213620-2048x2048.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.amber),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DOWNLOAD THE",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("MYNTRA APP NOW",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "for a better experience",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                color: Colors.black),
                            child: Row(
                              children: [
                                Flexible(
                                    child: Image.asset(
                                        "images/icons8-google-play-48.png")),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "GET IT ON",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Google Play",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                                color: Colors.black),
                            child: Row(
                              children: [
                                Flexible(
                                    child: Image.asset("images/download.png")),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Download on",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "App Store",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    // isLastPage = (index == 2);
                  });
                },
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/istockphoto-1160533209-1024x1024.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/istockphoto-1235611009-1024x1024.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/istockphoto-1334933118-1024x1024.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/istockphoto-1131193457-1024x1024.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SmoothPageIndicator(
                effect: WormEffect(
                    type: WormType.normal,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.black87),
                controller: _controller,
                count: 4),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                const  Icon(
                    IconData(0xe156, fontFamily: 'MaterialIcons'),
                    color: Colors.purple,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("ORIGINAL PRODUCTS")],
                    ),
                  ),
                  Container(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  Icon(
                    Icons.refresh,
                    color: Colors.purple,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("EASY RETURNS"), Text("REFUNDS")],
                    ),
                  ),
                  Container(
                    height: 20,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                  Icon(
                    Icons.payment,
                    color: Colors.purple,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("SECURE PAYMENTS")],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [offer(), offer()],
              ),
            ),
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.amber,
                      Colors.red,
                      Colors.orange,
                      Colors.pinkAccent,
                      Colors.lightGreen
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Text(
                  "CRAZY SUMMER DEALS",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ) // add your child widget here
                ),
            Text(
              "7PM - MIDNIGHT",
              style: TextStyle(fontSize: 15),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    7,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            border: Border.all(color: Colors.purple, width: 4)),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                image: DecorationImage(
                                    image: AssetImage(fis[index].toString()),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "Kurta Sets",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              "STARTING ₹599",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.amber,
                      Colors.red,
                      Colors.orange,
                      Colors.pinkAccent,
                      Colors.lightGreen
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: Text(
                  "PRIME TIME DEALS",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ) // add your child widget here
                ),
            Text(
              "MAKE SUPER SAVINGS",
              style: TextStyle(fontSize: 15),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    7,
                    (index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 250,
                        width: 220,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.orangeAccent, width: 4)),
                        child: Stack(
                          children: [
                            Container(
                              foregroundDecoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.black87,
                                      Colors.transparent
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(fis[index].toString()),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "T-Shirts",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "UNDER ₹399",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget offer() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
    child: Container(
      height: 30,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        color: Color.fromARGB(255, 228, 226, 226),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.credit_card),
          Container(
            height: 20,
            child: VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
          ),
          Text("10% Discount on YES Bank Credit Cards")
        ],
      ),
    ),
  );
}


