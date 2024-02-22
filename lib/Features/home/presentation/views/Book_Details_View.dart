import 'package:blookly_app/Features/home/data/models/Books_Model.dart';
import 'package:blookly_app/Features/home/presentation/manager/Book_Detail_cubit/BookDetail_cubit.dart';
import 'package:blookly_app/Features/home/presentation/views/widget/Book_DeatailsView_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Book_DeatailsView extends StatefulWidget {
  const Book_DeatailsView({super.key, required this.items});
  final Items items;

  @override
  State<Book_DeatailsView> createState() => _Book_DeatailsViewState();
}

class _Book_DeatailsViewState extends State<Book_DeatailsView> {
  @override
  void initState() {
    BlocProvider.of<BookDetail_Cubit>(context).fetchBook_Detail(category:widget.items.volumeInfo!.categories![0]);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Book_DeatailsView_Body(
      items: widget.items,
    )));
  }
}
