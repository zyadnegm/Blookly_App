import 'package:blookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/asset-utils.dart';
import 'Book_Rating.dart';

class BestsellerListview_Item extends StatelessWidget {
  const BestsellerListview_Item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  image:
                      DecorationImage(image: AssetImage(AssetData.testImage))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text("Harry Potterand the Goblet of Fire",
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14.copyWith(color: Color(0Xff707070)),
                  ),
                  const SizedBox(height: 3,),
                  Expanded(
                    child: Row(children: [
                      Text("19.99 €",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      Spacer(),
                      Book_Rating()


                    ],),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
