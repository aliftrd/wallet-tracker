import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/presentation/auth/login/login_page.dart';
import 'package:waltrack/presentation/auth/register/register_page.dart';
import 'package:waltrack/presentation/category_page.dart';
import 'package:waltrack/presentation/home/home_page.dart';
import 'package:waltrack/presentation/profile_page.dart';
import 'package:waltrack/presentation/switcher_page.dart';
import 'package:waltrack/presentation/splash_page.dart';
import 'package:waltrack/presentation/transaction_page.dart';
import 'package:waltrack/presentation/wallet/form/wallet_form_page.dart';
import 'package:waltrack/presentation/wallet/list/wallet_page.dart';
import 'package:waltrack/presentation/welcome_page.dart';

class AppRouter {
  AppRouter._();

  static const initialLocation = SplashPage.path;

  static final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root_navigator_key');

  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: initialLocation,
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      routes: _routes,
    );
  }

  static final List<RouteBase> _routes = [
    GoRoute(
      name: SplashPage.path,
      path: SplashPage.path,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: WelcomePage.path,
      path: WelcomePage.path,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      name: LoginPage.path,
      path: LoginPage.path,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      name: RegisterPage.path,
      path: RegisterPage.path,
      builder: (context, state) => const RegisterPage(),
    ),

    GoRoute(
      name: WalletFormPage.path,
      path: WalletFormPage.path,
      builder: (context, state) => WalletFormPage(walletId: state.extra as int?),
    ),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => SwitcherPage(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: HomePage.path,
              path: HomePage.path,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: WalletPage.path,
              path: WalletPage.path,
              builder: (context, state) => const WalletPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: TransactionPage.path,
              path: TransactionPage.path,
              builder: (context, state) => const TransactionPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: CategoryPage.path,
              path: CategoryPage.path,
              builder: (context, state) => const CategoryPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: ProfilePage.path,
              path: ProfilePage.path,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ];
}
