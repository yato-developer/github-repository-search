import 'dart:convert';
import 'package:github_repository_search/model/src/repository.dart';
import 'package:http/http.dart' as http;

class GithubRepositoryService {
  final String _baseUrl = 'https://api.github.com/search/repositories';

  Future<List<Repository>> searchRepository(String searchTerm) async {
    final url = Uri.parse('$_baseUrl?q=$searchTerm');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> items = data['items'];

        final repositories = items.map((e) => Repository.fromJson(e)).toList();
        return repositories;
      } else {
        throw Exception('Failed to load repositories: ${response.statusCode}');
      }
    } catch (e) {
      return [];
    }
  }
}
