import '../../../data/models/Books_Model.dart';

abstract class Books_States{}


class HomeBooks_Init extends Books_States{}
class HomeBooks_Loading extends Books_States{}
class HomeBooks_Success extends Books_States{
  final List<Items>books;
  HomeBooks_Success(this.books);
}
class HomeBooks_Faluire extends Books_States{
  final String error;
  HomeBooks_Faluire(this.error);
}