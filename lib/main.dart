import 'package:flutter/material.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColor.yellow,
        drawerTheme: DrawerThemeData(shadowColor: Colors.white),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
