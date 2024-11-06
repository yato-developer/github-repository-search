import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search/model/src/repository.dart';

void main() {
  group('Repository', () {
    test('正しくJSONをデシリアライズできているか', () {
      final json = {
        'name': 'flutter-repo',
        'language': 'Dart',
        'watchers_count': 100,
        'stargazers_count': 150,
        'forks_count': 50,
        'open_issues_count': 5,
        'html_url': 'https://github.com/yato-developer/github-repository-search',
        'description': 'flutter repo description',
        'owner': {'avatar_url': 'https://example.com/avatar.png'},
      };
      final repository = Repository.fromJson(json);

      expect(repository.name, 'flutter-repo');
      expect(repository.language, 'Dart');
      expect(repository.watchersCount, 100);
      expect(repository.stargazersCount, 150);
      expect(repository.forksCount, 50);
      expect(repository.openIssuesCount, 5);
      expect(repository.description, 'flutter repo description');
      expect(
        repository.htmlUrl,
        'https://github.com/yato-developer/github-repository-search',
      );
      expect(repository.owner.avatarUrl, 'https://example.com/avatar.png');
    });

    test('デフォルト値が設定されているか', () {
      final json = {
        'name': 'flutter-repo',
        'watchers_count': 100,
        'stargazers_count': 150,
        'forks_count': 50,
        'open_issues_count': 5,
        'html_url': 'https://github.com/yato-developer/github-repository-search',
        'owner': {'avatar_url': 'https://example.com/avatar.png'},
      };

      final repository = Repository.fromJson(json);

      expect(repository.language, 'null');
      expect(repository.description, 'null');
    });
  });

  group('Owner', () {
    test('正しくJSONをデシリアライズできるか', () {
      final json = {'avatar_url': 'https://example.com/avatar.png'};

      final owner = Owner.fromJson(json);

      expect(owner.avatarUrl, 'https://example.com/avatar.png');
    });
  });
}
