import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/signup.dart';
import 'package:fooddeliveryapp/widget/content_model.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: contents.length,
              controller: _controller,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        contents[i].title,
                        style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                      const SizedBox(height: 20),
                      Text(contents[i].description,
                          style: AppWidget.LightTextFeildStyle()),
                      const SizedBox(height: 20),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(contents.length,
                              (index) => buildDot(index, context)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (currentIndex == contents.length - 1) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          }
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.bounceIn);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 60,
                          margin: const EdgeInsets.all(40),
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              currentIndex == contents.length - 1
                                  ? 'Start'
                                  : 'Next',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black38,
      ),
    );
  }
}
