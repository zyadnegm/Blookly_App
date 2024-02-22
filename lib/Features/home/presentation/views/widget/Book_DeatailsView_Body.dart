import 'package:blookly_app/Features/home/data/models/Books_Model.dart';
import 'package:blookly_app/Features/home/presentation/views/widget/ListView_Item.dart';
import 'package:flutter/material.dart';

import 'BookDetails_List_Section.dart';
import 'Book_Details_Section.dart';
import 'Book_Details_appBar.dart';

class Book_DeatailsView_Body extends StatelessWidget {
  const Book_DeatailsView_Body({super.key, required this.items});
  final Items items;

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
                child: ListView_Item(
                urlImage: items.volumeInfo!.imageLinks?.thumbnail??"",
              ),
              ),

               SizedBox(
                height: 40,
              ),
              Book_Details_Section(
                items: items,
              ),
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


