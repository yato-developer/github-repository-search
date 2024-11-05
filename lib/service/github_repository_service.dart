import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:github_repository_search/model/src/repository.dart';

class GithubRepositoryService {
  final String _baseUrl = 'https://api.github.com/search/repositories';

  Future<List<Repository>> searchRepository(String searchTerm) async {
    final url = Uri.parse('$_baseUrl?q=$searchTerm');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> items = data['items'];

        final repositorys = items.map((e) => Repository.fromJson(e)).toList();
        return repositorys;
      } else {
        throw Exception('Failed to load repositories: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }
}
