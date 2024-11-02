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
  int get watchers_count => throw _privateConstructorUsedError;
  int get stargazers_count => throw _privateConstructorUsedError;
  int get forks_count => throw _privateConstructorUsedError;
  int get open_issues_count => throw _privateConstructorUsedError; //html_url
//description
//updated_at
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
      int watchers_count,
      int stargazers_count,
      int forks_count,
      int open_issues_count,
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
    Object? watchers_count = null,
    Object? stargazers_count = null,
    Object? forks_count = null,
    Object? open_issues_count = null,
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
      watchers_count: null == watchers_count
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int,
      stargazers_count: null == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int,
      forks_count: null == forks_count
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int,
      open_issues_count: null == open_issues_count
          ? _value.open_issues_count
          : open_issues_count // ignore: cast_nullable_to_non_nullable
              as int,
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
      int watchers_count,
      int stargazers_count,
      int forks_count,
      int open_issues_count,
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
    Object? watchers_count = null,
    Object? stargazers_count = null,
    Object? forks_count = null,
    Object? open_issues_count = null,
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
      watchers_count: null == watchers_count
          ? _value.watchers_count
          : watchers_count // ignore: cast_nullable_to_non_nullable
              as int,
      stargazers_count: null == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int,
      forks_count: null == forks_count
          ? _value.forks_count
          : forks_count // ignore: cast_nullable_to_non_nullable
              as int,
      open_issues_count: null == open_issues_count
          ? _value.open_issues_count
          : open_issues_count // ignore: cast_nullable_to_non_nullable
              as int,
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
      this.language = "null",
      required this.watchers_count,
      required this.stargazers_count,
      required this.forks_count,
      required this.open_issues_count,
      required this.owner});

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String language;
  @override
  final int watchers_count;
  @override
  final int stargazers_count;
  @override
  final int forks_count;
  @override
  final int open_issues_count;
//html_url
//description
//updated_at
  @override
  final Owner owner;

  @override
  String toString() {
    return 'Repository(name: $name, language: $language, watchers_count: $watchers_count, stargazers_count: $stargazers_count, forks_count: $forks_count, open_issues_count: $open_issues_count, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.watchers_count, watchers_count) ||
                other.watchers_count == watchers_count) &&
            (identical(other.stargazers_count, stargazers_count) ||
                other.stargazers_count == stargazers_count) &&
            (identical(other.forks_count, forks_count) ||
                other.forks_count == forks_count) &&
            (identical(other.open_issues_count, open_issues_count) ||
                other.open_issues_count == open_issues_count) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, language, watchers_count,
      stargazers_count, forks_count, open_issues_count, owner);

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
      required final int watchers_count,
      required final int stargazers_count,
      required final int forks_count,
      required final int open_issues_count,
      required final Owner owner}) = _$RepositoryImpl;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  String get name;
  @override
  String get language;
  @override
  int get watchers_count;
  @override
  int get stargazers_count;
  @override
  int get forks_count;
  @override
  int get open_issues_count; //html_url
//description
//updated_at
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
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  String get avatar_url => throw _privateConstructorUsedError;

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
  $Res call({String avatar_url});
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
    Object? avatar_url = null,
  }) {
    return _then(_value.copyWith(
      avatar_url: null == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $OwnerCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatar_url});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar_url = null,
  }) {
    return _then(_$ExternalUrlsImpl(
      avatar_url: null == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({required this.avatar_url});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  final String avatar_url;

  @override
  String toString() {
    return 'Owner(avatar_url: $avatar_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatar_url);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements Owner {
  const factory _ExternalUrls({required final String avatar_url}) =
      _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  String get avatar_url;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
