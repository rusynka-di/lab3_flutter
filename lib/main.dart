import 'package:flutter/material.dart';
// import 'Pages/loading_screen.dart';
// import 'Pages/login_page.dart';
// import 'Pages/register_page.dart';
// import 'Pages/home_page.dart';
import 'Pages/detail_page.dart';
// import 'Pages/profile_page.dart';
// import 'Pages/edit_user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}