import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search/pages/home_page/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('HomePageが検索フィールド、リスト、メッセージを表示するか確認',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HomePage(),
        ),
      ),
    );

    final searchField = find.byType(TextField);
    expect(searchField, findsOneWidget); // 検索フィールドが存在するか確認

    final searchButton = find.byIcon(Icons.search);
    expect(searchButton, findsOneWidget); // 検索ボタンが存在するか確認

    final clearButton = find.byIcon(Icons.clear);
    expect(clearButton, findsOneWidget); // クリアボタンが存在するか確認

    await tester.enterText(searchField, 'Flutter');
    await tester.tap(searchButton);
    await tester.pump();

    //ローディングインジケータ、メッセージ、リストビューが存在するか確認
    expect(
      find.byType(CircularProgressIndicator),
      findsNothing,
    ); // 初期状態でローディングインジケータがないことを確認
    expect(
      find.text('R E P O S I T O R Y'),
      findsOneWidget,
    ); // AppBarのタイトルが表示されているか確認

    // リポジトリのリストビューが表示されているか確認
    expect(find.byType(ListView), findsOneWidget);
  });
}
