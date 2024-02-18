import 'package:blookly_app/core/utils/App_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'BestsellerListview_Item.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).push(App_Router.kBookDetailsPath);
            },
              child: BestsellerListview_Item()),
        );
      },);
  }
}
