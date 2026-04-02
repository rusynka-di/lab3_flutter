import 'package:flutter/material.dart';
import 'Pages/loading_screen.dart';
import 'Pages/login_page.dart';
import 'Pages/register_page.dart';
import 'Pages/detail_page.dart';
import 'Pages/products_page.dart';
import 'Pages/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/main': (context) => const CustomBottomNavigationBar(),
        '/detail': (context) => const DetailPage(),
        '/products': (context) => const ProductsPage(),
      },
    );
  }
}
