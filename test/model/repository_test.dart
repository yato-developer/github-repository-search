import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search/model/repository.dart';

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
        "owner": {"avatar_url": "https://example.com/avatar.png"}
      };
      final repository = Repository.fromJson(json);

      expect(repository.name, "flutter-repo");
      expect(repository.language, "Dart");
      expect(repository.watchers_count, 100);
      expect(repository.stargazers_count, 150);
      expect(repository.forks_count, 50);
      expect(repository.open_issues_count, 5);
      expect(repository.owner.avatar_url, "https://example.com/avatar.png");
    });

    test('デフォルト値が設定されているか', () {
      final json = {
        "name": "flutter-repo",
        "watchers_count": 100,
        "stargazers_count": 150,
        "forks_count": 50,
        "open_issues_count": 5,
        "owner": {"avatar_url": "https://example.com/avatar.png"}
      };

      final repository = Repository.fromJson(json);

      expect(repository.language, "null");
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
