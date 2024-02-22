import 'package:blookly_app/Features/search%20feature/presentaion/views/widgets/CustomSearch_TextField.dart';
import 'package:blookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/App_router.dart';
import '../../../../home/presentation/views/widget/BestsellerListview_Item.dart';

class SearchView_Body extends StatelessWidget {
  const SearchView_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearch_TextField(),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Search Result",style: Styles.textStyle20,),
        ),
        const SizedBox(height: 10,),

        Expanded(child: Search_ListVew())


      ],
    );
  }
}

class Search_ListVew extends StatelessWidget {
  const Search_ListVew({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: InkWell(
              onTap: () {
                GoRouter.of(context).push(App_Router.kBookDetailsPath);
              },
              child: Text("")),
        );
      },);
  }
}

