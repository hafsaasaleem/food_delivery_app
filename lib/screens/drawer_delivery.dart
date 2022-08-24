import 'package:flutter/material.dart';

class DrawerDelivery extends StatelessWidget {
  const DrawerDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.orange,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 17, top: 17),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/madison.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Hello, \nHafsa ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 15,
                top: MediaQuery.of(context).size.height * 0.15,
              ),
              child: Column(children: [
                Row(children: const [
                  Icon(Icons.home, size: 35),
                  SizedBox(width: 8),
                  Text(
                    "Start",
                    style: TextStyle(fontSize: 25),
                  )
                ]),
                const SizedBox(height: 28),
                Row(children: const [
                  Icon(Icons.shopping_cart_outlined, size: 35),
                  SizedBox(width: 8),
                  Text(
                    "My Cart",
                    style: TextStyle(fontSize: 25),
                  )
                ]),
                const SizedBox(height: 28),
                Row(children: const [
                  Icon(Icons.app_registration, size: 35),
                  SizedBox(width: 8),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 25),
                  )
                ]),
                const SizedBox(height: 28),
                Row(children: const [
                  Icon(Icons.favorite, size: 35),
                  SizedBox(width: 8),
                  Text(
                    "Favorites",
                    style: TextStyle(fontSize: 25),
                  )
                ]),
                const SizedBox(height: 28),
                Row(children: const [
                  Icon(Icons.credit_card_rounded, size: 35),
                  SizedBox(width: 8),
                  Text(
                    "Paid",
                    style: TextStyle(fontSize: 25),
                  )
                ]),
                const SizedBox(height: 28),
                Row(children: const [
                  Icon(Icons.exit_to_app, size: 35),
                  SizedBox(width: 8),
                  Text(
                    "Leave",
                    style: TextStyle(fontSize: 25),
                  )
                ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
