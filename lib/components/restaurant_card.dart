import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/data.dart';
import 'package:food_delivery_app/components/shake_transition.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShakeTransition(
      axis: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
          color: Color(0xffFF9900),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20),
              child: Text(
                "Restaurants",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                physics: const BouncingScrollPhysics(),
                itemCount: restaurantList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 15.0),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: double.infinity,
                              margin: const EdgeInsets.only(right: 5.0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                              ),
                              child: Image(
                                  image:
                                      AssetImage(restaurantList[index].image)),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    restaurantList[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22.0),
                                  ),
                                  Text(
                                    restaurantList[index].available,
                                    style: const TextStyle(
                                        color: Color(0xff8D8D8D),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20.0),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Text(
                                        restaurantList[index].price1,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        restaurantList[index].price2,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.0,
                                          color: Color(0xff8D8D8D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                      width: double.infinity,
                                      alignment: Alignment.bottomRight,
                                      child: index == 0
                                          ? const Icon(
                                              Icons.favorite_sharp,
                                              color: Color(0xffFF9900),
                                              size: 35,
                                            )
                                          : null),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
