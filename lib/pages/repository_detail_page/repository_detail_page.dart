import 'package:flutter/material.dart';
import 'package:github_repository_search/model/repository.dart';
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
      body: Padding(
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
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Theme.of(context).colorScheme.primary,
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.code, color: Colors.blue),
                title: Text("Language"),
                subtitle: repository.language == "null" ? Text("Unknown") : Text(repository.language) ,
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.star, color: Colors.amber),
                title: Text("Stars"),
                subtitle: Text(repository.stargazers_count.toString()),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.visibility, color: Colors.green),
                title: Text("Watchers"),
                subtitle: Text(repository.watchers_count.toString()),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.device_hub, color: Colors.purple),
                title: Text("Forks"),
                subtitle: Text(repository.forks_count.toString()),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.primary,
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.bug_report, color: Colors.red),
                title: Text("Issues"),
                subtitle: Text(repository.open_issues_count.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
