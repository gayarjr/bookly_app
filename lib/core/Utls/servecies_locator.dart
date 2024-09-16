import 'package:bookly_app/core/Utls/api_srevices.dart';

import 'package:bookly_app/features/Home/data/repo/home_repo_impelemention.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiSrevices>(ApiSrevices(Dio()));
  getIt.registerSingleton<HomeRepoImpelemention>(
    HomeRepoImpelemention(getIt.get<ApiSrevices>()),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepo(getIt.get<ApiSrevices>()),
  );
}

class AuthRepo {
  final ApiSrevices apiSrevices;

  AuthRepo(this.apiSrevices);
}
