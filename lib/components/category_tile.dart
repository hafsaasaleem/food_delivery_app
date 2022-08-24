import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/data.dart';

class CategoryTile extends StatefulWidget {
  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < categoryList.length; i++) ...[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: buildCategory(i),
            ),
          ]
        ],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        height: 160,
        width: 95,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          color:
              selectedindex == index ? const Color(0xffFF9900) : Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 5),
                blurRadius: 5,
                spreadRadius: 2)
          ],
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: ClipOval(
                  child: Container(
                    margin: const EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(categoryList[index].image),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 6,
                child: SizedBox.expand(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      '${categoryList[index].name}',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: selectedindex == index
                              ? Colors.white
                              : Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
