import 'package:flutter/material.dart';

class CustomSearch_TextField extends StatelessWidget {
  const CustomSearch_TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),

            filled: true,
            prefixIcon: Icon(Icons.search, size: 30, color: Colors.white),
            labelText: "Search",
            labelStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),
            enabledBorder: OutlineInputBorder(
                gapPadding: 20,
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(color: Colors.white))),
      ),
    );

  }
}
