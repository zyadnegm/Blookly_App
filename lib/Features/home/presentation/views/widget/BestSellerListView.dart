import 'package:blookly_app/Features/home/data/models/Books_Model.dart';
import 'package:blookly_app/Features/home/presentation/manager/Books_Cubit/Books_Cubit.dart';
import 'package:blookly_app/Features/home/presentation/manager/Books_Cubit/Books_states.dart';
import 'package:blookly_app/core/utils/App_router.dart';
import 'package:blookly_app/core/widget/Custom_errorMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'BestsellerListview_Item.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Books_Cubit,Books_States>(
      builder: (context, state) {
        if(state is HomeBooks_Success ){
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: BestsellerListview_Item(items: state.books[index],),
              );
            },);
        }
        else if(state is HomeBooks_Faluire){
          return Custom_errorMessage(errormessaga: state.error);
        }
        else{
          return Text("data");
        }

      },

    );
  }
}
