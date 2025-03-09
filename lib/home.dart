import 'package:flutter/material.dart';
import 'package:my_flutter_app/utils/coffee_tile.dart';
import 'package:my_flutter_app/utils/coffee_type.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List Of coffee Types
  final List coffeeType = [
    // coffee type and status
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['white', false],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }

      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // user tap effect:

    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.person)),
          ]),
      body: Container(
        height: 600,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "The Best Cofee Shop In Town!",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),

            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: ("Find Your Coffee..."),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              ),
            ),

            SizedBox(height: 30),

            // horizontal list view of coffee types!
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isselected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                },
              ),
            ),

            // horizontal list view of coffee Tiles
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  coffee_tile(
                    coffeeImgPath: 'assets/images/coffee1.jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '4.20',
                  ),
                  coffee_tile(
                    coffeeImgPath: 'assets/images/coffee1.jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '4.20',
                  ),
                  coffee_tile(
                    coffeeImgPath: 'assets/images/coffee2.jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '4.20',
                  ),
                  coffee_tile(
                    coffeeImgPath: 'assets/images/coffee.jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '4.20',
                  ),
                  coffee_tile(
                    coffeeImgPath: 'assets/images/coffee.jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '4.20',
                  ),
                  coffee_tile(
                    coffeeImgPath: 'assets/images/coffee.jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '4.20',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "",
        ),
      ]),
    );
  }
}
