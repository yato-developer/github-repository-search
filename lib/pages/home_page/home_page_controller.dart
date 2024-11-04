import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_search/model/enums.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:github_repository_search/service/github_repository_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_controller.freezed.dart';

@freezed
class HomePagePageState with _$HomePagePageState {
  const factory HomePagePageState({
    @Default([]) List<Repository> repositorys,
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

  var service = GithubRepositoryService();

  Future<void> searchRepository(String searchTerm) async {
    state = state.copyWith(loading: true, messageType: MessageType.none);

    try {
      final repositorys = await service.searchRepository(searchTerm);
      if (repositorys.isEmpty) {
        state = state.copyWith(
          repositorys: repositorys,
          loading: false,
          messageType: MessageType.repositoryNotFound,
        );
      } else {
        state = state.copyWith(
          repositorys: repositorys,
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
