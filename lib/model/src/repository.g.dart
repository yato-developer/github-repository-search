// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      name: json['name'] as String,
      language: json['language'] as String? ?? 'null',
      watchersCount: (json['watchers_count'] as num).toInt(),
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      forksCount: (json['forks_count'] as num).toInt(),
      openIssuesCount: (json['open_issues_count'] as num).toInt(),
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String? ?? 'null',
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
      'watchers_count': instance.watchersCount,
      'stargazers_count': instance.stargazersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'owner': instance.owner,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
    };
