import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_search/model/enums.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:github_repository_search/pages/home_page/home_page_controller.dart';
import 'package:github_repository_search/pages/repository_detail_page/repository_detail_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(homePageProvider.select((s) => s.loading));
    final messageType =
        ref.watch(homePageProvider.select((s) => s.messageType));
    final controller = useTextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text('R E P O S I T O R Y'),
      ),
      body: Column(
        children: [
          _buildSearchTextField(controller, ref, context),
          if (messageType != MessageType.none)
            _buildMessageText(messageType: messageType, context: context),
          loading ? _buildLoadingIndicator(context) : _buildRepositoryList(ref),
        ],
      ),
    );
  }

  Widget _buildSearchTextField(
    TextEditingController controller,
    WidgetRef ref,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            const Icon(Icons.search),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                cursorColor: Colors.grey,
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ' ${AppLocalizations.of(context)!.hintText}',
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
                onSubmitted: (value) {
                  if (value.isEmpty) {
                    FocusScope.of(context).unfocus();
                  } else {
                    ref.read(homePageProvider.notifier).searchRepository(value);
                  }
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: controller.clear,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRepositoryList(WidgetRef ref) {
    final repositories =
        ref.watch(homePageProvider.select((s) => s.repositories));
    return Expanded(
      child: ListView.builder(
        itemCount: repositories.length,
        itemBuilder: (context, index) {
          return _buildRepositoryItemContainer(
            context: context,
            repository: repositories[index],
          );
        },
      ),
    );
  }

  Widget _buildRepositoryItemContainer({
    required BuildContext context,
    required Repository repository,
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
                offset: const Offset(0, 4),
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
                            fontSize: 17,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      repository.description == 'null'
                          ? AppLocalizations.of(context)!.noDescription
                          : repository.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.language,
                          size: 16,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          repository.language == 'null'
                              ? 'Unknown'
                              : repository.language,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 12),
                        const Icon(Icons.star, size: 16, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(
                          repository.stargazersCount.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 12),
                        const Icon(
                          Icons.visibility,
                          size: 16,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          repository.watchersCount.toString(),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
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

  Widget _buildMessageText({
    required MessageType messageType,
    required BuildContext context,
  }) {
    final fontSize = 16.0;
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (messageType == MessageType.enterRepositoryName)
              Text(
                AppLocalizations.of(context)!.enterRepositoryName,
                style: TextStyle(fontSize: fontSize),
              ),
            if (messageType == MessageType.repositoryNotFound)
              Text(
                AppLocalizations.of(context)!.repositoryNotFound,
                style: TextStyle(fontSize: fontSize),
              ),
            if (messageType == MessageType.error)
              Text(
                AppLocalizations.of(context)!.repositoryDetail,
                style: TextStyle(fontSize: fontSize),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    return Expanded(
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
