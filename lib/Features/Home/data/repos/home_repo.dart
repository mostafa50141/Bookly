import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
