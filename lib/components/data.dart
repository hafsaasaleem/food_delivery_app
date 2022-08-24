class Category {
  Category(this.name, this.image);
  final String name;
  final String image;
}

final categoryList = <Category>[
  Category('Pizzas', 'assets/pizza.png'),
  Category('Hamburger', 'assets/filete.png'),
  Category('Drinks', 'assets/drinks.jpg'),
  Category('Sushi', 'assets/sushi.png'),
  Category('Ceviche', 'assets/ceviche.png'),
];

class Populares {
  Populares(
    this.image,
    this.name,
    this.category,
    this.price1,
    this.price2,
  );
  final String image;
  final String name;
  final String category;
  final String price1;
  final String price2;
}

final popularList = <Populares>[
  Populares('assets/pizza.png', 'Pizza Napolitana', 'Pizzas', '\$15', '\$10'),
  Populares('assets/sushi.png', 'Sushi Ninja Roll', 'Sushis', '\$25', '\$20'),
  Populares('assets/filete.png', 'Hamburger', 'Hamburgers', '\$8', '\$5'),
  Populares('assets/ceviche.png', 'Ceviche', 'Ceviches', '\$15', '\$13'),
];

class Restaurant {
  Restaurant(this.name, this.available, this.image, this.price1, this.price2);

  final String name;
  final String available;
  final String image;
  final String price1;
  final String price2;
}

final restaurantList = <Restaurant>[
  Restaurant(
      'Papa Jhon\'s', 'Disponible', 'assets/papa_jhons.png', '\$15', '\$10'),
  Restaurant(
      'Domino\'s', 'No Disponible', 'assets/dominos.png', '\$25', '\$20'),
  Restaurant('Pizza Hut', 'Disponible', 'assets/pizzahut.png', '\$8', '\$5'),
  Restaurant(
      'Telepizza', 'No Disponible', 'assets/telepizza.jpg', '\$15', '\$13'),
];
