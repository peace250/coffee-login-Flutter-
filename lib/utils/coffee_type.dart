import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
final String coffeeType;
final bool isselected;
final VoidCallback onTap;

CoffeeType({
  required this.coffeeType,
  required this.isselected,
  required this.onTap
});
  @override
  Widget build(BuildContext context) {
    return
    
     GestureDetector(
      onTap:onTap,
       child: Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: ( 
          Text(coffeeType, style: 
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:isselected? Colors.orange:Colors.white
          )
          ,)),
           ),
     );
  }
}