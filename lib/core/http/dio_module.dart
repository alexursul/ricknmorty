import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<Dio> get dio async {
    final dio = Dio(
      BaseOptions(baseUrl: apiBaseUrl),
    );

    return dio;
  }
}

const apiBaseUrl = 'https://rickandmortyapi.com/api';
