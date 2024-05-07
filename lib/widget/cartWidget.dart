import 'package:flutter/material.dart';
import '../models/model.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key, required this.orders}) : super(key: key);

  final Product orders;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  orders.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16), // Add some space between the image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orders.productName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("${orders.titleName}"),
                    Text(
                      "${orders.price}",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Center(child: Icon(Icons.add))],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
