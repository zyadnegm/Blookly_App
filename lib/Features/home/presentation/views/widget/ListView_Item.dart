import 'package:flutter/material.dart';

class ListView_Item extends StatelessWidget {
  const ListView_Item({super.key, required this.urlImage});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
       aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(urlImage)
          )
        ),
      ),
    );
  }
}
