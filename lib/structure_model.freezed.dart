// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'structure_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Device {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  final Device _value;
  // ignore: unused_field
  final $Res Function(Device) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$_DeviceCopyWith(_$_Device value, $Res Function(_$_Device) then) =
      __$$_DeviceCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_DeviceCopyWithImpl<$Res> extends _$DeviceCopyWithImpl<$Res>
    implements _$$_DeviceCopyWith<$Res> {
  __$$_DeviceCopyWithImpl(_$_Device _value, $Res Function(_$_Device) _then)
      : super(_value, (v) => _then(v as _$_Device));

  @override
  _$_Device get _value => super._value as _$_Device;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Device(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Device implements _Device {
  const _$_Device({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'Device(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Device &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      __$$_DeviceCopyWithImpl<_$_Device>(this, _$identity);
}

abstract class _Device implements Device {
  const factory _Device({required final String name}) = _$_Device;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceCopyWith<_$_Device> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Locale {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleCopyWith<Locale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleCopyWith<$Res> {
  factory $LocaleCopyWith(Locale value, $Res Function(Locale) then) =
      _$LocaleCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$LocaleCopyWithImpl<$Res> implements $LocaleCopyWith<$Res> {
  _$LocaleCopyWithImpl(this._value, this._then);

  final Locale _value;
  // ignore: unused_field
  final $Res Function(Locale) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LocaleCopyWith<$Res> implements $LocaleCopyWith<$Res> {
  factory _$$_LocaleCopyWith(_$_Locale value, $Res Function(_$_Locale) then) =
      __$$_LocaleCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_LocaleCopyWithImpl<$Res> extends _$LocaleCopyWithImpl<$Res>
    implements _$$_LocaleCopyWith<$Res> {
  __$$_LocaleCopyWithImpl(_$_Locale _value, $Res Function(_$_Locale) _then)
      : super(_value, (v) => _then(v as _$_Locale));

  @override
  _$_Locale get _value => super._value as _$_Locale;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Locale(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Locale implements _Locale {
  const _$_Locale({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'Locale(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locale &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_LocaleCopyWith<_$_Locale> get copyWith =>
      __$$_LocaleCopyWithImpl<_$_Locale>(this, _$identity);
}

abstract class _Locale implements Locale {
  const factory _Locale({required final String name}) = _$_Locale;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocaleCopyWith<_$_Locale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Theme {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeCopyWith<Theme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeCopyWith<$Res> {
  factory $ThemeCopyWith(Theme value, $Res Function(Theme) then) =
      _$ThemeCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ThemeCopyWithImpl<$Res> implements $ThemeCopyWith<$Res> {
  _$ThemeCopyWithImpl(this._value, this._then);

  final Theme _value;
  // ignore: unused_field
  final $Res Function(Theme) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeCopyWith<$Res> implements $ThemeCopyWith<$Res> {
  factory _$$_ThemeCopyWith(_$_Theme value, $Res Function(_$_Theme) then) =
      __$$_ThemeCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_ThemeCopyWithImpl<$Res> extends _$ThemeCopyWithImpl<$Res>
    implements _$$_ThemeCopyWith<$Res> {
  __$$_ThemeCopyWithImpl(_$_Theme _value, $Res Function(_$_Theme) _then)
      : super(_value, (v) => _then(v as _$_Theme));

  @override
  _$_Theme get _value => super._value as _$_Theme;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Theme(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Theme implements _Theme {
  const _$_Theme({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'Theme(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Theme &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeCopyWith<_$_Theme> get copyWith =>
      __$$_ThemeCopyWithImpl<_$_Theme>(this, _$identity);
}

abstract class _Theme implements Theme {
  const factory _Theme({required final String name}) = _$_Theme;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeCopyWith<_$_Theme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoldenPresenterResult {
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoldenPresenterResultCopyWith<GoldenPresenterResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldenPresenterResultCopyWith<$Res> {
  factory $GoldenPresenterResultCopyWith(GoldenPresenterResult value,
          $Res Function(GoldenPresenterResult) then) =
      _$GoldenPresenterResultCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class _$GoldenPresenterResultCopyWithImpl<$Res>
    implements $GoldenPresenterResultCopyWith<$Res> {
  _$GoldenPresenterResultCopyWithImpl(this._value, this._then);

  final GoldenPresenterResult _value;
  // ignore: unused_field
  final $Res Function(GoldenPresenterResult) _then;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GoldenPresenterResultCopyWith<$Res>
    implements $GoldenPresenterResultCopyWith<$Res> {
  factory _$$_GoldenPresenterResultCopyWith(_$_GoldenPresenterResult value,
          $Res Function(_$_GoldenPresenterResult) then) =
      __$$_GoldenPresenterResultCopyWithImpl<$Res>;
  @override
  $Res call({String body});
}

/// @nodoc
class __$$_GoldenPresenterResultCopyWithImpl<$Res>
    extends _$GoldenPresenterResultCopyWithImpl<$Res>
    implements _$$_GoldenPresenterResultCopyWith<$Res> {
  __$$_GoldenPresenterResultCopyWithImpl(_$_GoldenPresenterResult _value,
      $Res Function(_$_GoldenPresenterResult) _then)
      : super(_value, (v) => _then(v as _$_GoldenPresenterResult));

  @override
  _$_GoldenPresenterResult get _value =>
      super._value as _$_GoldenPresenterResult;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$_GoldenPresenterResult(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GoldenPresenterResult implements _GoldenPresenterResult {
  const _$_GoldenPresenterResult({required this.body});

  @override
  final String body;

  @override
  String toString() {
    return 'GoldenPresenterResult(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoldenPresenterResult &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_GoldenPresenterResultCopyWith<_$_GoldenPresenterResult> get copyWith =>
      __$$_GoldenPresenterResultCopyWithImpl<_$_GoldenPresenterResult>(
          this, _$identity);
}

abstract class _GoldenPresenterResult implements GoldenPresenterResult {
  const factory _GoldenPresenterResult({required final String body}) =
      _$_GoldenPresenterResult;

  @override
  String get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GoldenPresenterResultCopyWith<_$_GoldenPresenterResult> get copyWith =>
      throw _privateConstructorUsedError;
}
