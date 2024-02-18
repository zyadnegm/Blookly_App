import 'package:flutter/material.dart';

import 'ListView_Item.dart';

class Similar_Book_ListView extends StatelessWidget {
  const Similar_Book_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height *.17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListView_Item(),
          );
        },),
    );
  }
}
