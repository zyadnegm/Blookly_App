import '../../../data/models/Books_Model.dart';

abstract class BooksDetail_States{}

class BookDetail_Init extends BooksDetail_States{}
class BookDetail_Success extends BooksDetail_States{
  final List<Items>books;

  BookDetail_Success(this.books);
}
class BookDetail_Faluire extends BooksDetail_States{
  final String error;

  BookDetail_Faluire(this.error);
}
class BookDetail_Loading extends BooksDetail_States{}

