import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartWidget1 extends StatelessWidget {
  const CartWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: const Column(
              children: [
                cardwidget(
                  item: 'Items:',
                  price: '10',
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                cardwidget(
                  item: 'Total-Sub:',
                  price: '100\$',
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                cardwidget(
                  item: 'Delivery:',
                  price: '5\$',
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                cardwidget(
                  item: 'Total:',
                  price: '105\$',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                "Total:",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "80\$",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Order Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class cardwidget extends StatelessWidget {
  const cardwidget({
    super.key,
    required this.item,
    required this.price,
  });
  final String item;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
