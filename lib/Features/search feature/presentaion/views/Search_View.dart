import 'package:blookly_app/Features/search%20feature/presentaion/views/widgets/SearchView_Body.dart';
import 'package:flutter/material.dart';

class Search_View extends StatelessWidget {
  const Search_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: SearchView_Body(),
    ),);
  }
}
