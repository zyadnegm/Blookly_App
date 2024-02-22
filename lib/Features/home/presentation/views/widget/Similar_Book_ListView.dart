import 'package:blookly_app/Features/home/presentation/manager/Book_Detail_cubit/BookDetail_cubit.dart';
import 'package:blookly_app/Features/home/presentation/manager/Book_Detail_cubit/BookDetail_states.dart';
import 'package:blookly_app/core/widget/Custom_CircularProgressIndicator.dart';
import 'package:blookly_app/core/widget/Custom_errorMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ListView_Item.dart';

class Similar_Book_ListView extends StatelessWidget {
  const Similar_Book_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetail_Cubit,BooksDetail_States>(
      builder: (context, state) {
        if(state is BookDetail_Success){
          return SizedBox(
            height: MediaQuery.sizeOf(context).height *.17,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView_Item(
                    urlImage: state.books[index].volumeInfo?.imageLinks?.thumbnail??"",
                  ),
                );
              },),
          );
        }
        else if(state is BookDetail_Faluire){
          return Custom_errorMessage(errormessaga: state.error);
        }
        else{
          return Custom_CircularProgressIndicator();
        }
      },
    );
  }
}
