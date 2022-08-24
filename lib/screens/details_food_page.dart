import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/data.dart';
import 'package:food_delivery_app/components/foodSize.dart';
import 'package:food_delivery_app/components/restaurant_card.dart';
import 'package:food_delivery_app/components/shake_transition.dart';

class DetailFoodPage extends StatelessWidget {
  const DetailFoodPage({Key? key, required this.popular}) : super(key: key);
  final Populares popular;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BackButton(),
                    Text(
                      "FOOD DELIVERY APP",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xffFF9900),
                          fontWeight: FontWeight.w900),
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage("assets/madison.jpg"),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Hero(
                    tag: popular.name,
                    child: Image(
                      image: AssetImage(popular.image),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ),
                  const Positioned(
                    left: 20,
                    top: 0,
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Color(0xffFF9900),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    left: 0,
                    child: Container(
                      clipBehavior: Clip.none,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ShakeTransition(
                            axis: Axis.vertical,
                            fade: true,
                            duration: const Duration(milliseconds: 1000),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              child: const FoodSize(size: 'S'),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const ShakeTransition(
                            axis: Axis.vertical,
                            fade: true,
                            duration: Duration(milliseconds: 1200),
                            child: FoodSize(size: 'M'),
                          ),
                          const SizedBox(width: 15),
                          ShakeTransition(
                            axis: Axis.vertical,
                            fade: true,
                            duration: const Duration(milliseconds: 1000),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              child: const FoodSize(size: 'L'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(popular.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22.0)),
                        Text(popular.category,
                            style: const TextStyle(
                                color: Color(0xff8D8D8D),
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0)),
                      ],
                    ),
                    const Spacer(),
                    Text(popular.price1,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 35.0)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Text("Quantity",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff8D8D8D),
                              fontSize: 22.0)),
                    ),
                    Expanded(
                      flex: 7,
                      child: SizedBox.expand(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffF6F6F6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.remove,
                                size: 20,
                              ),
                              Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(child: RestaurantCard()),
            ],
          ),
        ),
      ),
    );
  }
}
