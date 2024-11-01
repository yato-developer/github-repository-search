import 'package:flutter/material.dart';
import 'package:github_repository_search/model/repository.dart';
class RepositoryDetailPage extends StatelessWidget {
  final Repository repository;
  const RepositoryDetailPage({super.key, required this.repository});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リポジトリ詳細"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(repository.name),
            SizedBox(
              height: 50,
              child: Image.network(repository.owner.avatar_url),
            ),
            Text("Language: ${repository.language}"),
            Text("Star: ${repository.stargazers_count}"),
            Text("Wather: ${repository.watchers_count}"),
            Text("Fork: ${repository.forks_count}"),
            Text("Isuu: ${repository.open_issues_count}"),
          ],
        ),
      ),
    );
  }
}