import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/theme/app_theme.dart';
import 'package:waltrack/presentation/shared/bloc/auth/auth_bloc.dart';
import 'package:waltrack/presentation/wallet/list/bloc/wallet_bloc.dart';
import 'package:waltrack/presentation/transaction/list/bloc/transaction_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Sizes.setScreenAwareConstant(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()..add(const AuthEvent.watchAuthStatus())),
        BlocProvider(create: (context) => WalletBloc()),
        BlocProvider(create: (context) => TransactionBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: AppTheme.darkTheme,
        routerConfig: locator<GoRouter>(),
      ),
    );
  }
}
