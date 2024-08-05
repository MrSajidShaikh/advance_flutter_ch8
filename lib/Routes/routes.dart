import 'package:flutter/cupertino.dart';
import '../Screens/Lec - 8.1/View/homescreen.dart';
import '../Screens/Lec - 8.2/View/user_screen.dart';
import '../Screens/Lec - 8.3/View/posts_screen.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/' : (context) => const PostsScreen(),
    '/user' : (context) => const UserScreen(),
    '/home' : (context) => const HomeScreen(),
  };
}
