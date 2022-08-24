import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/data.dart';
import 'package:food_delivery_app/screens/details_food_page.dart';

class PopularCard extends StatefulWidget {
  const PopularCard({Key? key}) : super(key: key);

  @override
  State<PopularCard> createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        itemCount: popularList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 1000),
                  pageBuilder: (context, animation, _) {
                    return FadeTransition(
                      opacity: animation,
                      child: DetailFoodPage(
                        popular: popularList[index],
                      ),
                    );
                  }));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 15.0),
              padding: const EdgeInsets.all(8.0),
              height: 180,
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
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Hero(
                      tag: "${popularList[index].name}",
                      child: Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        height: double.infinity,
                        key: UniqueKey(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage(popularList[index].image),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${popularList[index].name}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20.0),
                          ),
                          Text(
                            '${popularList[index].category}',
                            style: const TextStyle(
                                color: Color(0xff8D8D8D),
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${popularList[index].price1}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '${popularList[index].price2}',
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
                            alignment: Alignment.bottomRight,
                            width: double.infinity,
                            child: const Icon(
                              Icons.favorite_sharp,
                              color: Color(0xffFF9900),
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
