import 'package:blookly_app/Features/home/data/models/Books_Model.dart';
import 'package:blookly_app/Features/home/presentation/views/widget/ListView_Item.dart';
import 'package:blookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/App_router.dart';
import 'Book_Rating.dart';

class BestsellerListview_Item extends StatelessWidget {
  const BestsellerListview_Item({super.key, required this.items});
 final Items items;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          GoRouter.of(context).push(App_Router.kBookDetailsPath,extra: items);

      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ListView_Item(urlImage: items.volumeInfo!.imageLinks!.thumbnail??""),
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
                      items.volumeInfo!.authors![0].toString(),
                      style: Styles.textStyle14.copyWith(color: Color(0Xff707070)),
                    ),
                    const SizedBox(height: 3,),
                    Expanded(
                      child: Row(children: [
                        Text("Free",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Book_Rating(rate: items.volumeInfo!.pageCount??0,count:items.volumeInfo!.pageCount??0 ,)


                      ],),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
