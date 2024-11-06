import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search/model/enums.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:github_repository_search/pages/home_page/home_page_controller.dart';
import 'package:github_repository_search/service/github_repository_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

class MockGithubRepositoryService extends Mock
    implements GithubRepositoryService {
  @override
  Future<List<Repository>> searchRepository(String searchTerm) {
    return super.noSuchMethod(
      Invocation.method(#searchRepository, [searchTerm]),
      returnValue: Future.value(<Repository>[]),
      returnValueForMissingStub: Future.value(<Repository>[]),
    );
  }
}

void main() {
  late ProviderContainer container;
  late MockGithubRepositoryService mockService;

  setUp(() {
    mockService = MockGithubRepositoryService();
    container = ProviderContainer(
      overrides: [
        homePageProvider.overrideWith(
          (ref) => HomePagePageController()..service = mockService,
        ),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  test('初期状態ではリポジトリは空で、読み込み中でなく、messageTypeはenterRepositoryNameになる', () {
    final controller = container.read(homePageProvider.notifier);
    final state = controller.state;

    expect(state.repositorys, isEmpty);
    expect(state.loading, isFalse);
    expect(state.messageType, MessageType.enterRepositoryName);
  });

  test('searchRepositoryは成功した場合はリポジトリを返しMessageType.noneになる', () async {
    final controller = container.read(homePageProvider.notifier);
    final repositories = [
      Repository(
        name: 'TestRepo',
        language: 'Dart',
        watchersCount: 10,
        stargazersCount: 100,
        forksCount: 5,
        openIssuesCount: 2,
        htmlUrl: 'https://github.com/user/TestRepo',
        description: 'This is a test repository',
        owner: Owner(avatarUrl: 'https://example.com/avatar.png'),
      ),
    ];

    when(mockService.searchRepository('Test'))
        .thenAnswer((_) async => repositories);

    await controller.searchRepository('Test');

    expect(container.read(homePageProvider).repositorys, repositories);
    expect(container.read(homePageProvider).messageType, MessageType.none);
  });

  test('searchRepositoryはリポジトリが見つからない場合、messageTypeをrepositoryNotFoundになる',
      () async {
    final controller = container.read(homePageProvider.notifier);
    when(mockService.searchRepository('NotFound'))
        .thenAnswer((_) async => <Repository>[]);

    await controller.searchRepository('NotFound');

    expect(
      container.read(homePageProvider).messageType,
      MessageType.repositoryNotFound,
    );
  });
}
