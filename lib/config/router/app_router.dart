import 'package:forms_app/presentation/screens/screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScren()),
    GoRoute(
      path: '/cubits',
      builder: (context, state) => const CubitCounterScreen(),
    ),
    GoRoute(
      path: '/counter-bloc',
      builder: (context, state) => const BlocCounterScreen(),
    ),
  ],
);

    // Home
    