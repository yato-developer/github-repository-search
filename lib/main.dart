import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_repository_search/l10n/l10n.dart';
import 'package:github_repository_search/pages/home_page/home_page.dart';
import 'package:github_repository_search/themes/app_colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  //DevicePreview
  //runApp(DevicePreview(builder: (_) => ProviderScope(child: MyApp())));

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
      supportedLocales: L10n.all,
      locale: const Locale('en'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: lightMode,
      darkTheme: darkMode,
      home: MediaQuery.withClampedTextScaling(
          minScaleFactor: 0.9, maxScaleFactor: 1.5, child: const HomePage()),
    );
  }
}
