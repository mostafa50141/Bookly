import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/Features/Home/data/repos/home_repo.dart';
import 'package:flutter_application_1/core/Utils/api_service.dart';
import 'package:flutter_application_1/core/errors/failures.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
