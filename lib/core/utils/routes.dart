import 'package:bookly_app/core/utils/service_locter.dart';
import 'package:bookly_app/features/main_screen/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/main_screen/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/main_screen/presentation/views/details.dart';
import 'package:bookly_app/features/main_screen/presentation/views/home.dart';
import 'package:bookly_app/features/search/presentation/views/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../features/main_screen/presentation/management_ui/similar_books_cubit/similar_books_cubit.dart';
import '../../features/splash/presentation/views/splash.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';
  
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(

        
        path: kDetailsView,
        
        
        builder: (BuildContext context, GoRouterState state) {
          return  BlocProvider(
            create: (context) => SimilarBooksCubit(
               getIt.get<HomeRepoImp>()
            ),
            child:  DetailsViewScreen(
              bookModel: state.extra as BookModel,
              
            ),
          
          );
        },
        
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      ),
    ],
  );
}
