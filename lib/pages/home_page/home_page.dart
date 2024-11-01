import 'package:flutter/material.dart';
import 'package:github_repository_search/pages/home_page/home_page_controller.dart';
import 'package:github_repository_search/pages/repository_detail_page/repository_detail_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(homePageProvider.select((s) => s.loading));
    final message = ref.watch(homePageProvider.select((s) => s.message));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text("R E P O S I T O R Y"),
      ),
      body: Column(
        children: [
          _buildSearchTextField(),
          message == "" ? SizedBox() : _buildMessageText(message: message),
          loading ? _buildLoadingIndicator() : _buildRepositoryList(),
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Consumer(
      builder: (context, ref, child) {
        final controller = TextEditingController();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.primary),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "検索",
                    ),
                    onSubmitted: (String value) {
                      ref
                          .watch(homePageProvider.notifier)
                          .searchRepository(value);
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildRepositoryList() {
    return Consumer(builder: (context, ref, child) {
      final repositorys =
          ref.watch(homePageProvider.select((s) => s.repositorys));
      return Expanded(
        child: ListView.builder(
            itemCount: repositorys.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildRepositoryItemContainer(
                  context: context, repository: repositorys[index]);
            }),
      );
    });
  }

  Widget _buildRepositoryItemContainer(
      {required repository, required context}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RepositoryDetailPage(repository: repository),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.primary),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Text(repository.name),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageText({required message}) {
    return Expanded(child: Center(child: Text(message)));
  }

  Widget _buildLoadingIndicator() {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
