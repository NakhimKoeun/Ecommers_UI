import 'package:ecommersappui/data/listData.dart';
import 'package:ecommersappui/models/categories.dart';
import 'package:flutter/material.dart';

import '../widget/widget.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(child: Icon(Icons.arrow_back_ios)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Order List",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: orderlis
                  .map((Product order) => CartWidget(orders: order))
                  .toList(),
            ),
            CartWidget1()
          ],
        ),
      ),
    );
  }
}
