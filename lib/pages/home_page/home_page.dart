import 'package:flutter/material.dart';
import 'package:github_repository_search/model/enums.dart';
import 'package:github_repository_search/pages/home_page/home_page_controller.dart';
import 'package:github_repository_search/pages/repository_detail_page/repository_detail_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(homePageProvider.select((s) => s.loading));
    final messageType =
        ref.watch(homePageProvider.select((s) => s.messageType));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text("R E P O S I T O R Y"),
      ),
      body: Column(
        children: [
          _buildSearchTextField(),
          messageType == MessageType.none
              ? SizedBox()
              : _buildMessageText(messageType: messageType, context: context),
          loading
              ? _buildLoadingIndicator(context: context)
              : _buildRepositoryList(),
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
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.grey,
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " ${AppLocalizations.of(context)!.hintText}",
                      hintStyle: TextStyle(color: Colors.grey),
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

  Widget _buildRepositoryItemContainer({
    required repository,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RepositoryDetailPage(repository: repository),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repository.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(repository.description, maxLines: 2,),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                                                Icon(
                          Icons.language,
                          size: 16,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${repository.language}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 12),

                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${repository.stargazers_count}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 12),
                        Icon(
                          Icons.visibility,
                          size: 16,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${repository.watchers_count}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 12),

                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageText({required messageType, required context}) {
    return Expanded(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        messageType == MessageType.enterRepositoryName
            ? Text(AppLocalizations.of(context)!.enterRepositoryName)
            : SizedBox(),
        messageType == MessageType.repositoryNotFound
            ? Text(AppLocalizations.of(context)!.repositoryNotFound)
            : SizedBox(),
        messageType == MessageType.error
            ? Text(AppLocalizations.of(context)!.repositoryNotFound)
            : SizedBox()
      ],
    )));
  }

  Widget _buildLoadingIndicator({required context}) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
