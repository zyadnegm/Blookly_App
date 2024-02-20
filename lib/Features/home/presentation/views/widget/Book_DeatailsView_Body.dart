import 'package:blookly_app/Features/home/presentation/views/widget/ListView_Item.dart';
import 'package:flutter/material.dart';

import 'BookDetails_List_Section.dart';
import 'Book_Details_Section.dart';
import 'Book_Details_appBar.dart';

class Book_DeatailsView_Body extends StatelessWidget {
  const Book_DeatailsView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Book_Details_appBar(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .22),
                child: ListView_Item(urlImage: "https://www.google.com/url?sa=i&url=https%3A%2F%2Far.m.wikipedia.org%2Fwiki%2F%25D9%2585%25D9%2584%25D9%2581%3ABooks_HD_%25288314929977%2529.jpg&psig=AOvVaw0x77kRB0EjUStvYcXQghLi&ust=1708533946409000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPi6wYmvuoQDFQAAAAAdAAAAABAE",),
              ),
              const SizedBox(
                height: 40,
              ),
              Book_Details_Section(),
              const SizedBox(
                height: 50,
              ),
              BookDetails_List_Section()
            ],
          ),
        ),
      )
    ]);
  }
}


