import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/service_locter.dart';
import 'features/main_screen/data/repos/home_repo_imp.dart';
import 'features/main_screen/presentation/management_ui/featured_books_cubit/featured_books_cubit.dart';
import 'features/main_screen/presentation/management_ui/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewestBooksCubit>(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImp>())..fetchNewestBooks(),
        ),
        BlocProvider<FeaturedBooksCubit>(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImp>())..fetchBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(primaryColor),
            // primaryColor: const Color(primaryColor),
            // focusColor: const Color(primaryColor),
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        // home: const SplashScreen(),
      ),
    );
  }
}
