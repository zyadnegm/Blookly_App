import 'package:blookly_app/Features/home/presentation/views/widget/Book_DeatailsView_Body.dart';
import 'package:flutter/material.dart';

class Book_DeatailsView extends StatelessWidget {
  const Book_DeatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Book_DeatailsView_Body()));
  }
}
