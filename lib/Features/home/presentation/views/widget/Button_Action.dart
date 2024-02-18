import 'package:flutter/material.dart';

import '../../../../../core/widget/Custom_Button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Custom_Button(
          background_botton: Colors.white,
          text_color: Colors.black,
          textbutton: "19.99€",
          borderRadius_botton: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft:Radius.circular(15) ),
        )),
        Expanded(child: Custom_Button(
          background_botton: Color(0XFFEF8262),
          text_color: Colors.white,
          textbutton: "Free preview",
          borderRadius_botton: BorderRadius.only(topRight: Radius.circular(15),bottomRight:Radius.circular(15) ),
        )),


      ],
    );
  }
}
