import 'package:flutter/material.dart';
import 'package:github_repository_search/pages/home_page/home_page.dart';
import 'package:github_repository_search/themes/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Repository Search',
      theme: lightMode,
      darkTheme: darkMode,
      home: const HomePage(),
    );
  }
}
