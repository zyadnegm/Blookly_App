import 'package:flutter/material.dart';

import 'Similar_Book_ListView.dart';

class BookDetails_List_Section extends StatelessWidget {
  const BookDetails_List_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You can also like"),
        const SizedBox(
          height: 16,
        ),
        Similar_Book_ListView(),
      ],
    );
  }
}
