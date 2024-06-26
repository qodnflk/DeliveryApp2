import 'package:flutter/material.dart';

class FoodModels {
  String name;
  String description;
  int price;
  String img;
  int time;

  FoodModels({
    required this.name,
    required this.description,
    required this.img,
    required this.price,
    required this.time
  });

  factory FoodModels.fromJson(Map<String, dynamic> json) => FoodModels(
        name: json['name'],
        description: json['description'],
        img: json['img'],
        price: json['price'].todouble,
        time: json['time'].todouble,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'img': img,
        'price': price,
        'time' : time,
      };

  final food = [
    FoodModels(
      name: 'Veggie Taco Hash',
      description:
          'Veggie Taco Hash is a flavorful and nutritious dish that combines the vibrant tastes of Mexican cuisine with the heartiness of a hash. It typically includes ingredients like sweet potatoes, black beans, bell peppers, corn, and onions, all sautéed together with taco seasoning. This dish is often topped with fresh cilantro, avocado slices, and a squeeze of lime for added zest. Veggie Taco Hash can be enjoyed as a main meal or a side dish, offering a satisfying and wholesome option for vegetarians and taco lovers alike.',
      img: 'imges/salad2.png',
      price: 25,
      time: 30,
    ),
    FoodModels(
      name: 'Basic Salad',
      description:
          'A Basic Salad is a simple yet nutritious dish made primarily of fresh greens and vegetables. Typically, it includes ingredients like lettuce, cucumbers, tomatoes, and carrots, all chopped or sliced and mixed together. Sometimes, basic salads are topped with a light vinaigrette or a drizzle of olive oil and vinegar. This salad serves as a versatile base, allowing for the addition of various toppings such as cheese, nuts, or croutons to enhance its flavor and texture. Basic Salads are a healthy and quick option for a side dish or a light meal.',
      img: 'imges/salad3.png',
      price: 20,
      time: 15,
    ),
    FoodModels(
      name: 'Mix veg Salad',
      description:
          'Mix Veg Salad is a refreshing and healthy dish that combines a variety of fresh vegetables. Common ingredients include lettuce, cucumbers, tomatoes, bell peppers, carrots, and red onions, all finely chopped and tossed together. The salad is often enhanced with a light dressing, such as olive oil and lemon juice, and can be topped with herbs like parsley or cilantro for added flavor. Mix Veg Salad is versatile and can be enjoyed as a side dish or a light main course, providing a burst of color and nutrients in every bite.',
      img: 'imges/salad4.png',
      price: 30,
      time: 40,
    ),
  ];
}
