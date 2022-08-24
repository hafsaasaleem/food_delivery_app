import 'package:flutter/material.dart';

class FoodSize extends StatelessWidget {
  final String size;
  const FoodSize({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 5),
              blurRadius: 5,
              spreadRadius: 2)
        ],
      ),
      child: Center(
        child: Text(
          size,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
