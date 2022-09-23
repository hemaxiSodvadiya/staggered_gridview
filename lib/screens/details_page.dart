import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../list.dart';

class DetailPages extends StatefulWidget {
  const DetailPages({Key? key}) : super(key: key);

  @override
  State<DetailPages> createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
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
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: imagePage.map((e) => Image.network(e)).toList(),
            options: CarouselOptions(
                height: 250, viewportFraction: 0.8, enlargeCenterPage: true),
          ),
        ],
      ),
    );
  }
}
