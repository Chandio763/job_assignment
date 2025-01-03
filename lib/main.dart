import 'package:flutter/material.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoutes.signup,
      onGenerateRoute: AppPages.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
