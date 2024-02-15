import 'package:blookly_app/core/utils/asset-utils.dart';
import 'package:flutter/material.dart';

class ListView_Item extends StatelessWidget {
  const ListView_Item({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
       aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetData.testImage)
          )
        ),
      ),
    );
  }
}
