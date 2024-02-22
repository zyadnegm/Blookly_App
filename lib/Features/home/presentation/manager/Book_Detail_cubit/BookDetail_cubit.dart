import 'package:blookly_app/Features/home/presentation/manager/Book_Detail_cubit/BookDetail_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';

class BookDetail_Cubit extends Cubit<BooksDetail_States>{
  BookDetail_Cubit(this.homeRepo):super(BookDetail_Init());
  final HomeRepo homeRepo;

  Future<void>fetchBook_Detail({required String category})async {
    emit(BookDetail_Loading());
    var result= await homeRepo.fetchBook_Details(category: category);
    result.fold((faluire) {
      emit(BookDetail_Faluire(faluire.error_message));
    }, (books) {

      emit(BookDetail_Success(books));
    });
  }

}