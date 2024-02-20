import 'package:blookly_app/Features/home/presentation/manager/Books_Cubit/Books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/homeRepo.dart';

class Books_Cubit extends Cubit<Books_States>{
  Books_Cubit(this.homeRepo):super(HomeBooks_Init());
  final HomeRepo homeRepo;

  Future<void>fetchfeatureBooks()async {
    emit(HomeBooks_Loading());
    var result= await homeRepo.fetchFueatureBooks();
    result.fold((faluire) {
      emit(HomeBooks_Faluire(faluire.error_message));
    }, (books) {

      emit(HomeBooks_Success(books));
    });
  }

}