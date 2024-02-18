import 'package:blookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  const Custom_Button(
      {super.key,
      required this.textbutton,
      required this.background_botton,
      required this.borderRadius_botton,
      required this.text_color});

  final String textbutton;
  final Color background_botton;
  final BorderRadius borderRadius_botton;
  final Color text_color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(

          style: TextButton.styleFrom(
              backgroundColor: background_botton,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius_botton)),
          onPressed: () {},
          child: Text(
            textbutton,
            style: Styles.textStyle18.copyWith(color: text_color),
          )),
    );
  }
}
