import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search/model/src/repository.dart';

void main() {
  group('Repository', () {
    test('正しくJSONをデシリアライズできているか', () {
      final json = {
        "name": "flutter-repo",
        "language": "Dart",
        "watchers_count": 100,
        "stargazers_count": 150,
        "forks_count": 50,
        "open_issues_count": 5,
        "html_url": "https://github.com/yato-developer/github-repository-search",
        "description": "flutter repo description",
        "owner": {"avatar_url": "https://example.com/avatar.png"}
      };
      final repository = Repository.fromJson(json);

      expect(repository.name, "flutter-repo");
      expect(repository.language, "Dart");
      expect(repository.watchers_count, 100);
      expect(repository.stargazers_count, 150);
      expect(repository.forks_count, 50);
      expect(repository.open_issues_count, 5);
      expect(repository.description, "flutter repo description");
      expect(repository.html_url, "https://github.com/yato-developer/github-repository-search");
      expect(repository.owner.avatar_url, "https://example.com/avatar.png");
    });

    test('デフォルト値が設定されているか', () {
      final json = {
        "name": "flutter-repo",
        "watchers_count": 100,
        "stargazers_count": 150,
        "forks_count": 50,
        "open_issues_count": 5,
        "html_url": "https://github.com/yato-developer/github-repository-search",
        "owner": {"avatar_url": "https://example.com/avatar.png"}
      };

      final repository = Repository.fromJson(json);

      expect(repository.language, "null");
      expect(repository.description, "null");
    });
  });

  group('Owner', () {
    test('正しくJSONをデシリアライズできるか', () {
      final json = {"avatar_url": "https://example.com/avatar.png"};

      final owner = Owner.fromJson(json);

      expect(owner.avatar_url, "https://example.com/avatar.png");
    });
  });
}
