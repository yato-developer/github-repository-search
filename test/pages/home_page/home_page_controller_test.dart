import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search/pages/home_page/home_page_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



void main() {
  late ProviderContainer container;


  setUp(() {
    container = ProviderContainer();
  });

  tearDown(() {
    container.dispose();
  });

  test('初期状態が正しいことを確認', () {
    final state = container.read(homePageProvider);
    expect(state.repositorys, []);
    expect(state.loading, false);
    expect(state.message, "リポジトリ名を入力してください");
  });

}
