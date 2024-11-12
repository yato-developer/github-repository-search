import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_search/model/enums.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:github_repository_search/service/github_repository_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_controller.freezed.dart';

@freezed
class HomePagePageState with _$HomePagePageState {
  const factory HomePagePageState({
    @Default([]) List<Repository> repositories,
    @Default(false) bool loading,
    @Default(MessageType.enterRepositoryName) MessageType messageType,
  }) = _HomePagePageState;
}

final homePageProvider = StateNotifierProvider.autoDispose<
    HomePagePageController, HomePagePageState>(
  (ref) => HomePagePageController(),
);

class HomePagePageController extends StateNotifier<HomePagePageState> {
  HomePagePageController() : super(const HomePagePageState());

  GithubRepositoryService service = GithubRepositoryService();

  Future<void> searchRepository(String searchTerm) async {
    state = state.copyWith(loading: true, messageType: MessageType.none);

    try {
      final repositories = await service.searchRepository(searchTerm);
      if (repositories.isEmpty) {
        state = state.copyWith(
          repositories: repositories,
          loading: false,
          messageType: MessageType.repositoryNotFound,
        );
      } else {
        state = state.copyWith(
          repositories: repositories,
          loading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        loading: false,
        messageType: MessageType.error,
      );
    }
  }
}
