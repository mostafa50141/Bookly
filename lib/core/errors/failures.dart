import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure([this.errMessage = 'An unexpected error occurred.']);
}

class ServerFailure extends Failure {
  const ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with the server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with the server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Connection Timeout with the server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate from the server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to the server was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(
          'Connection to the server failed due to internet connection',
        );
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error occurred');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later!');
    } else {
      return ServerFailure('Something went wrong, Please try later!');
    }
  }
}
