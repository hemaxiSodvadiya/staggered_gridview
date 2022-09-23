import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../list.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
            items: natureimage
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
