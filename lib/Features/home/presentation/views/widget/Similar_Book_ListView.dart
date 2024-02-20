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
            child: ListView_Item(
              urlImage: "https://www.google.com/url?sa=i&url=https%3A%2F%2Far.m.wikipedia.org%2Fwiki%2F%25D9%2585%25D9%2584%25D9%2581%3ABooks_HD_%25288314929977%2529.jpg&psig=AOvVaw02Y5WtFSv55b1gFMnY7Krf&ust=1708534261115000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJiOuZ-wuoQDFQAAAAAdAAAAABAE",
            ),
          );
        },),
    );
  }
}
