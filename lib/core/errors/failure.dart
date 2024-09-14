import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      // TODO: Handle this case.
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      // TODO: Handle this case.
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      // TODO: Handle this case.
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate error'); // تم إضافة هذه السطر
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      // TODO: Handle this case.
      case DioExceptionType.cancel:
        return ServerFailure('Request with ApiServer was canceled');
      // TODO: Handle this case.
      case DioExceptionType.connectionError:
        if (dioerror.message!.contains('SocketException')) {
          return ServerFailure('No internet Connection');
        }
        break; // تأكد من إضافة `break` هنا
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error');
      default:
        return ServerFailure('Oops, there was an error');
    }
    return ServerFailure('An unknown error occurred');
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error');
    } else {
      return ServerFailure('Oops, there was an error');
    }
  }
}
