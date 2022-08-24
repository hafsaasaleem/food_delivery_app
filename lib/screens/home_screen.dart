import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/category_tile.dart';
import '../components/popular_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
          ..scale(isDrawerOpen ? 0.90 : 1.00),
        duration: const Duration(milliseconds: 700),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDrawerOpen ? BorderRadius.circular(30) : null,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            xOffSet = !isDrawerOpen
                                ? MediaQuery.of(context).size.width / 2
                                : 0;
                            yOffSet = !isDrawerOpen ? 40 : 0;
                            isDrawerOpen = !isDrawerOpen;
                          });
                        },
                        icon: const Icon(Icons.menu)),
                    const Text(
                      "FOOD DELIVERY APP",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffFF9900),
                          fontWeight: FontWeight.bold),
                    ),
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/madison.jpg"),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7.0),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 235, 235),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff737373),
                      size: 25,
                    ),
                    Text(
                      "Location",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello, Hafsa Shaikh',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff585858),
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Good Morning',
                        style: TextStyle(
                            fontSize: 32,
                            color: Color(0xff585858),
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: SizedBox.expand(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 238, 235, 235),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Color(0xff585858),
                                size: 28,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                "What are you looking for?",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 238, 235, 235),
                        ),
                        child: const Icon(
                          Icons.tune_rounded,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff585858),
                      fontWeight: FontWeight.w600),
                ),
              ),
              CategoryTile(),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "More Popular",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff585858),
                      fontWeight: FontWeight.w600),
                ),
              ),
              const PopularCard(),
            ],
          ),
        ),
      ),
    );
  }
}
