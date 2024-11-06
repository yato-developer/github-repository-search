// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  String get name => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;

  /// Serializes this Repository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call(
      {String name,
      String language,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      @JsonKey(name: 'html_url') String htmlUrl,
      String description,
      Owner owner});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
    Object? watchersCount = null,
    Object? stargazersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? htmlUrl = null,
    Object? description = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ) as $Val);
  }

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String language,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      @JsonKey(name: 'html_url') String htmlUrl,
      String description,
      Owner owner});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
    Object? watchersCount = null,
    Object? stargazersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? htmlUrl = null,
    Object? description = null,
    Object? owner = null,
  }) {
    return _then(_$RepositoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryImpl implements _Repository {
  const _$RepositoryImpl(
      {required this.name,
      this.language = 'null',
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'forks_count') required this.forksCount,
      @JsonKey(name: 'open_issues_count') required this.openIssuesCount,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      this.description = 'null',
      required this.owner});

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey()
  final String description;
  @override
  final Owner owner;

  @override
  String toString() {
    return 'Repository(name: $name, language: $language, watchersCount: $watchersCount, stargazersCount: $stargazersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount, htmlUrl: $htmlUrl, description: $description, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      language,
      watchersCount,
      stargazersCount,
      forksCount,
      openIssuesCount,
      htmlUrl,
      description,
      owner);

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  const factory _Repository(
      {required final String name,
      final String language,
      @JsonKey(name: 'watchers_count') required final int watchersCount,
      @JsonKey(name: 'stargazers_count') required final int stargazersCount,
      @JsonKey(name: 'forks_count') required final int forksCount,
      @JsonKey(name: 'open_issues_count') required final int openIssuesCount,
      @JsonKey(name: 'html_url') required final String htmlUrl,
      final String description,
      required final Owner owner}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  String get name;
  @override
  String get language;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  String get description;
  @override
  Owner get owner;

  /// Create a copy of Repository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$OwnerImpl(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl({@JsonKey(name: 'avatar_url') required this.avatarUrl});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'Owner(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
          {@JsonKey(name: 'avatar_url') required final String avatarUrl}) =
      _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
