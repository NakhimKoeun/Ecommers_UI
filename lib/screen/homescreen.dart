import 'package:ecommersappui/data/listData.dart';
import 'package:flutter/material.dart';

import '../widget/widget.dart';
import 'screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Cartscreen()));
              },
              icon: Icon(
                Icons.notification_add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const texrfiledwidgwt(),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Category",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Assuming texrfiledwidgwt() is a typo and should be TextFiledWidget()
            CategoryWidget(
              products: category,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            listwiget(
              products: category,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Newst",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            newwidget()
          ],
        ),
      ),
    );
  }
}
