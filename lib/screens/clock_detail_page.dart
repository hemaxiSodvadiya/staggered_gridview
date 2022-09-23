import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../list.dart';

class ClockDetailPage extends StatefulWidget {
  const ClockDetailPage({Key? key}) : super(key: key);

  @override
  State<ClockDetailPage> createState() => _ClockDetailPageState();
}

class _ClockDetailPageState extends State<ClockDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Gallery"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: clockimage
                .map((e) => Container(
                      child: Image.network(e),
                    ))
                .toList(),
            options: CarouselOptions(
                height: 250, viewportFraction: 0.8, enlargeCenterPage: true),
          ),
        ],
      ),
    );
  }
}
