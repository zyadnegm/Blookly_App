import 'package:blookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Custom_errorMessage extends StatelessWidget {
  const Custom_errorMessage({super.key, required this.errormessaga});
  final String errormessaga;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errormessaga,style: Styles.textStyle18,));
  }
}
