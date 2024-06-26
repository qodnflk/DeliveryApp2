import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';
import 'package:fooddeliveryapp/models/food_models.dart';

class Details extends StatefulWidget {
  
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int num = 0;

  void increasenum() {
    setState(() {
      num++;
    });
  }

  void decreasenum() {
    if (num > 0) {
      setState(() {
        num--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mediterranean',
                        style: AppWidget.semiBoldTextFeildStyle()),
                    Text('Chickpea Salad',
                        style: AppWidget.HeadlineTextFeildStyle()),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: decreasenum,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Text('$num', style: AppWidget.semiBoldTextFeildStyle()),
                const SizedBox(width: 20.0),
                GestureDetector(
                  onTap: increasenum,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Salad is a popular dish that typically consists of a mixture of small pieces of food, usually vegetables or fruits. Common ingredients include lettuce, tomatoes, cucumbers, and carrots, often accompanied by dressing. ",
              style: AppWidget.LightTextFeildStyle(),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Delivery Time',
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                const SizedBox(width: 10.0),
                const Icon(Icons.alarm, color: Colors.black54),
                const SizedBox(width: 5.0),
                Text(
                  '30 min',
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',
                          style: AppWidget.semiBoldTextFeildStyle()),
                      Text('\$28', style: AppWidget.HeadlineTextFeildStyle()),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Row(
                      children: [
                        const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
