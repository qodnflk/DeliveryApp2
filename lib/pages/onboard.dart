import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/content_model.dart';

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
      body: Column(
        children: [
          PageView.builder(
            itemCount: contents.length,
            controller: _controller,
            itemBuilder: (_, i) {
              return const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
