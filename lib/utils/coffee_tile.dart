import 'package:flutter/material.dart';

class coffee_tile extends StatelessWidget {
  final String coffeeImgPath;
  final String coffeeName;
  final String coffeePrice;
  coffee_tile(
      {required this.coffeeImgPath,
      required this.coffeeName,
      required this.coffeePrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Container(
          padding: EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
// Padding(padding: EdgeInsets.all(12)),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
// Coffee image
                child: Image.asset(
                  coffeeImgPath,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

// Text

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  children: [
                    Text(
                      coffeeName,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "With Almond Oil!",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              // Price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(coffeePrice),
                    
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
