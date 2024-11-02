// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePagePageState {
  List<Repository> get repositorys => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  MessageType get messageType => throw _privateConstructorUsedError;

  /// Create a copy of HomePagePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePagePageStateCopyWith<HomePagePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePagePageStateCopyWith<$Res> {
  factory $HomePagePageStateCopyWith(
          HomePagePageState value, $Res Function(HomePagePageState) then) =
      _$HomePagePageStateCopyWithImpl<$Res, HomePagePageState>;
  @useResult
  $Res call(
      {List<Repository> repositorys, bool loading, MessageType messageType});
}

/// @nodoc
class _$HomePagePageStateCopyWithImpl<$Res, $Val extends HomePagePageState>
    implements $HomePagePageStateCopyWith<$Res> {
  _$HomePagePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePagePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositorys = null,
    Object? loading = null,
    Object? messageType = null,
  }) {
    return _then(_value.copyWith(
      repositorys: null == repositorys
          ? _value.repositorys
          : repositorys // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePagePageStateImplCopyWith<$Res>
    implements $HomePagePageStateCopyWith<$Res> {
  factory _$$HomePagePageStateImplCopyWith(_$HomePagePageStateImpl value,
          $Res Function(_$HomePagePageStateImpl) then) =
      __$$HomePagePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Repository> repositorys, bool loading, MessageType messageType});
}

/// @nodoc
class __$$HomePagePageStateImplCopyWithImpl<$Res>
    extends _$HomePagePageStateCopyWithImpl<$Res, _$HomePagePageStateImpl>
    implements _$$HomePagePageStateImplCopyWith<$Res> {
  __$$HomePagePageStateImplCopyWithImpl(_$HomePagePageStateImpl _value,
      $Res Function(_$HomePagePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePagePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositorys = null,
    Object? loading = null,
    Object? messageType = null,
  }) {
    return _then(_$HomePagePageStateImpl(
      repositorys: null == repositorys
          ? _value._repositorys
          : repositorys // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
    ));
  }
}

/// @nodoc

class _$HomePagePageStateImpl implements _HomePagePageState {
  const _$HomePagePageStateImpl(
      {final List<Repository> repositorys = const [],
      this.loading = false,
      this.messageType = MessageType.enterRepositoryName})
      : _repositorys = repositorys;

  final List<Repository> _repositorys;
  @override
  @JsonKey()
  List<Repository> get repositorys {
    if (_repositorys is EqualUnmodifiableListView) return _repositorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositorys);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final MessageType messageType;

  @override
  String toString() {
    return 'HomePagePageState(repositorys: $repositorys, loading: $loading, messageType: $messageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePagePageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._repositorys, _repositorys) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_repositorys), loading, messageType);

  /// Create a copy of HomePagePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePagePageStateImplCopyWith<_$HomePagePageStateImpl> get copyWith =>
      __$$HomePagePageStateImplCopyWithImpl<_$HomePagePageStateImpl>(
          this, _$identity);
}

abstract class _HomePagePageState implements HomePagePageState {
  const factory _HomePagePageState(
      {final List<Repository> repositorys,
      final bool loading,
      final MessageType messageType}) = _$HomePagePageStateImpl;

  @override
  List<Repository> get repositorys;
  @override
  bool get loading;
  @override
  MessageType get messageType;

  /// Create a copy of HomePagePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePagePageStateImplCopyWith<_$HomePagePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
