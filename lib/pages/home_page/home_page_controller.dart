import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_search/model/enums.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:github_repository_search/service/github_repository_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_controller.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default([]) List<Repository> repositories,
    @Default(false) bool loading,
    @Default(MessageType.enterRepositoryName) MessageType messageType,
  }) = _HomePageState;
}

final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageController, HomePageState>(
  (ref) => HomePageController(),
);

class HomePageController extends StateNotifier<HomePageState> {
  HomePageController() : super(const HomePageState());

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
