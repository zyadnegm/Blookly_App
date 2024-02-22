import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/Books_Model.dart';
import 'Book_Rating.dart';
import 'Button_Action.dart';

class Book_Details_Section extends StatelessWidget {
  const Book_Details_Section({super.key, required this.items});
  final Items items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          items.volumeInfo!.title??"",
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          items.volumeInfo!.authors![0],
          style: Styles.textStyle14.copyWith(color: Color(0Xff707070)),
        ),
        const SizedBox(
          height: 16,
        ),
        Book_Rating(rate: 2,count: 2,),
        const SizedBox(
          height: 37,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: BookAction(),
        ),
      ],
    );
  }
}
