import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/Features/Home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(NewsetBooksFailure(failure.errMessage)),
      (books) => emit(NewsetBooksSuccess(books)),
    );
  }
}
