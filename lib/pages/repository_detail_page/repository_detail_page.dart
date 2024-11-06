import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryDetailPage extends StatelessWidget {
  const RepositoryDetailPage({super.key, required this.repository});
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(AppLocalizations.of(context)!.repositoryDetail),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(repository.owner.avatarUrl),
              ),
              SizedBox(height: 8),
              Text(
                repository.name,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              repository.description == 'null'
                  ? Text(
                      AppLocalizations.of(context)!.noDescription,
                      style: TextStyle(fontSize: 16),
                    )
                  : Text(
                      repository.description,
                      style: TextStyle(fontSize: 16),
                    ),
              SizedBox(
                height: 10,
              ),
              _buildOpenRepositoryButton(
                url: Uri.parse(repository.htmlUrl),
                context: context,
              ),
              SizedBox(height: 15),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.language, color: Colors.blue),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Language'),
                          Text(
                            repository.language == 'null'
                                ? 'Unknown'
                                : repository.language,
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.amber),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Stars'),
                          Text(repository.stargazersCount.toString()),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.visibility, color: Colors.blueGrey),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Watchers'),
                          Text(repository.watchersCount.toString()),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.device_hub, color: Colors.pink),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Forks'),
                          Text(repository.forksCount.toString()),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.bug_report, color: Colors.green),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Issues'),
                          Text(repository.openIssuesCount.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOpenRepositoryButton({required Uri url, required context}) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw Exception('Could not launch $url');
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 16,
                bottom: 16,
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.openGitHub,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
