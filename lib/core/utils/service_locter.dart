import 'package:bookly_app/core/utils/app_service.dart';
import 'package:bookly_app/features/main_screen/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AppService>(AppService(Dio()));
  getIt.registerSingleton<HomeRepoImp>(
      HomeRepoImp(getIt<AppService>())
  );


}