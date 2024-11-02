import 'package:flutter/material.dart';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RepositoryDetailPage extends StatelessWidget {
  final Repository repository;

  const RepositoryDetailPage({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.repositoryDetail),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(repository.owner.avatar_url),
                    ),
                    SizedBox(height: 8),
                    Text(
                      repository.name,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(repository.description),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Theme.of(context).colorScheme.primary,
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.language, color: Colors.blue),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Language"),
                      Text(repository.language == "null" ? "Unknown" : repository.language),
                    ],
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.star, color: Colors.amber),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Stars"),
                      Text(repository.stargazers_count.toString()),
                    ],
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.visibility, color: Colors.blueGrey),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Watchers"),
                      Text(repository.watchers_count.toString()),
                    ],
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.device_hub, color: Colors.pink),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Forks"),
                      Text(repository.forks_count.toString()),
                    ],
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.primary,
                elevation: 2,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(Icons.bug_report, color: Colors.green),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Issues"),
                      Text(repository.open_issues_count.toString()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
