import 'package:dio/dio.dart';
import 'package:flutter_application_1/Features/Home/data/repos/home_repo_impl.dart';
import 'package:flutter_application_1/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_application_1/core/Utils/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<FeaturedBooksCubit>(
    FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
  );
}
