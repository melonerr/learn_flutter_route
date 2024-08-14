// ignore_for_file: depend_on_referenced_packages

// Import Go Router Package
import 'package:go_router/go_router.dart';
import 'package:learnflutter_go_route/presentation/pages/arguments_page.dart';
import 'package:learnflutter_go_route/presentation/pages/multi_arguments_page.dart';

// Import the PageName
import 'package:learnflutter_go_route/presentation/routes/pages_name.dart';

// Import the pages
import 'package:learnflutter_go_route/presentation/pages/about_page.dart';
import 'package:learnflutter_go_route/presentation/pages/home_page.dart';

final router = GoRouter(initialLocation: PageName.homeRoute, routes: [
  GoRoute(
      path: PageName.homeRoute,
      builder: (context, state) => const HomePage(),
      routes: [
        // Without Arguments
        GoRoute(
          path: PageName.about,
          builder: (context, state) => const AboutPage(),
        ),

        // With Single Argument
        GoRoute(
          path: PageName.arguments,
          builder: (context, state) =>
              ArgumentsPage(extra: state.extra as String?),
        ),

        // With Multi Arguments
        GoRoute(
          path: PageName.multiArguments,
          builder: (context, state) =>
              MultiArgumentsPage(extra: state.extra as Map<String, dynamic>?),
        ),
      ]),
]);
