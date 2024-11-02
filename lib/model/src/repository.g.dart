// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      name: json['name'] as String,
      language: json['language'] as String? ?? "null",
      watchers_count: (json['watchers_count'] as num).toInt(),
      stargazers_count: (json['stargazers_count'] as num).toInt(),
      forks_count: (json['forks_count'] as num).toInt(),
      open_issues_count: (json['open_issues_count'] as num).toInt(),
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
      'watchers_count': instance.watchers_count,
      'stargazers_count': instance.stargazers_count,
      'forks_count': instance.forks_count,
      'open_issues_count': instance.open_issues_count,
      'owner': instance.owner,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      avatar_url: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatar_url,
    };
