import 'package:blookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:blookly_app/Features/home/presentation/manager/BestSeller_Books_Cubit/BestSeller_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSeller_Cubit extends Cubit<BestSeller_States>{
  BestSeller_Cubit(this.homeRepo):super(BestSeller_init());
  final HomeRepo homeRepo;

  Future<void>fetchBestSeller_Books()async {
    emit(BestSeller_Loading());
    var result= await homeRepo.fetchBestSeller_Books();
    result.fold((faluire) {
      emit(BestSeller_Faluire(faluire.error_message));
    }, (books) {
      emit(BestSeller_Success(books));
    });
  }

}