import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_assignment/modules/auth/views/register_view.dart';
import 'package:job_assignment/modules/home/views/home_view.dart';
import '../../modules/auth/bloc/auth_bloc.dart';
import '../../modules/auth/data/repository/auth_repository.dart';
import '../../modules/auth/views/login_view.dart';
import 'app_routes.dart';

class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case AppRoutes.splash:
      //   return MaterialPageRoute(builder: (_) => SplashView());
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => AuthBloc(authRepository: AuthRepository()),
            child: const LoginView(),
          ),
        );
      case AppRoutes.signup:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => AuthBloc(authRepository: AuthRepository()),
            child: const RegisterView(),
          ),
        );
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      // case AppRoutes.profile:
      //   return MaterialPageRoute(builder: (_) => ProfileView());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Unknown Route')),
          ),
        );
    }
  }
}
