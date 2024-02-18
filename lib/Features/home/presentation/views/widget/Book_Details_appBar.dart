import 'package:flutter/material.dart';

class Book_Details_appBar extends StatelessWidget {
  const Book_Details_appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.close,size: 33,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 30,)),

      ],
    );
  }
}
