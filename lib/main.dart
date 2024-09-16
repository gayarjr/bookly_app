import 'package:bookly_app/core/Utls/api_srevices.dart';
import 'package:bookly_app/core/Utls/app_router.dart';
import 'package:bookly_app/core/Utls/servecies_locator.dart';
import 'package:bookly_app/features/Home/data/presentaion/Manager/features_books_cubit/features_books_cubit.dart';
import 'package:bookly_app/features/Home/data/presentaion/Manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/data/repo/home_repo_impelemention.dart';
import 'package:bookly_app/features/constant.dart';
import 'package:bookly_app/features/splash/presentation/view/splashview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturesBooksCubit(getIt.get<HomeRepoImpelemention>()),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpelemention>()),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: Kpraimarycolor),
      ),
    );
  }
}
