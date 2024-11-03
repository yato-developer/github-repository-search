import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository(
      {required String name,
      @Default("null") String language,
      required int watchers_count,
      required int stargazers_count,
      required int forks_count,
      required int open_issues_count,
      required String html_url,
      @Default("null") String description,
      required Owner owner
      }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class Owner with _$Owner {
const factory Owner({
required String avatar_url,
}) = _ExternalUrls;

factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}