import 'package:flutter/material.dart';
import 'package:page_view/paggg.dart';

import 'p3.dart';
import 'p4.dart';
class pageview1 extends StatelessWidget {
  PageController controller2 =PageController(
    initialPage: 1
  );
  final List<Widget> pages=[
    page3(),
    page4(),
    page2(),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: PageView(
        controller: controller2,
        children: pages,
      ),
    );
  }
}
