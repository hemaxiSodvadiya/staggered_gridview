import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stagggered_gridview/screens/clock_detail_page.dart';
import 'package:stagggered_gridview/screens/detail_page.dart';
import 'package:stagggered_gridview/screens/details_page.dart';

import 'list.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'detail_page': (context) => const DetailPage(),
        'clock_detail_page': (context) => const ClockDetailPage(),
        '_3_detail_page': (context) => const DetailPages(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("staggered_gridview"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: MasonryGridView.count(
          itemCount: image.length,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                print("+++");
                Navigator.of(context).pushNamed('${image[i].route}');
              },
              child: Container(
                // color: Colors.brown,
                alignment: Alignment.center,
                // height: (i * 100) / 6.5,
                child: Image.network(
                  image[i].image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
