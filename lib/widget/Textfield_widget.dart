import 'package:flutter/material.dart';

class texrfiledwidgwt extends StatelessWidget {
  const texrfiledwidgwt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 8),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 8)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 0.8, color: Colors.red)),
              hintText: "What would you to have",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              suffixIcon: Icon(Icons.clear)),
        ),
      ),
    );
  }
}
