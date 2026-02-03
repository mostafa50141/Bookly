import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/Features/Home/data/repos/home_repo.dart';
import 'package:flutter_application_1/core/errors/failures.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
