import 'package:bookly_app/core/Utls/api_srevices.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo.dart';

import 'package:bookly_app/features/Home/data/repo/home_repo_impelemention.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void SetupServciesLocator() {
  getIt.registerSingleton<ApiSrevices>(ApiSrevices(Dio()));
  getIt.registerSingleton<HomeRepoImpelemention>(
    HomeRepoImpelemention(getIt.get<ApiSrevices>()),
  );
}
