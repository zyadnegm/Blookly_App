import '../../../data/models/Books_Model.dart';

abstract class BestSeller_States{}


class BestSeller_init extends BestSeller_States{}
class BestSeller_Loading extends BestSeller_States{}
class BestSeller_Success extends BestSeller_States{
  final List<Items>books;

   BestSeller_Success(this.books);
}
class BestSeller_Faluire extends BestSeller_States{
  final String error;

  BestSeller_Faluire(this.error);
}

