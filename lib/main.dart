import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Routes/routes.dart';
import 'Screens/Lec - 8.1/Provider/home_screen_provider.dart';
import 'Screens/Lec - 8.2/Provider/user_provider.dart';
import 'Screens/Lec - 8.3/Provider/posts_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhotosProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PostsProvider(),
        ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: MyRoutes.myRoutes,
    );
  }
}
