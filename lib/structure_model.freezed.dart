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
mixin _$TestFolder {
  String get name => throw _privateConstructorUsedError;
  List<TestFolder> get subfolders => throw _privateConstructorUsedError;
  List<GoldenFolder> get goldenFolders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestFolderCopyWith<TestFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestFolderCopyWith<$Res> {
  factory $TestFolderCopyWith(
          TestFolder value, $Res Function(TestFolder) then) =
      _$TestFolderCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<TestFolder> subfolders,
      List<GoldenFolder> goldenFolders});
}

/// @nodoc
class _$TestFolderCopyWithImpl<$Res> implements $TestFolderCopyWith<$Res> {
  _$TestFolderCopyWithImpl(this._value, this._then);

  final TestFolder _value;
  // ignore: unused_field
  final $Res Function(TestFolder) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? subfolders = freezed,
    Object? goldenFolders = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subfolders: subfolders == freezed
          ? _value.subfolders
          : subfolders // ignore: cast_nullable_to_non_nullable
              as List<TestFolder>,
      goldenFolders: goldenFolders == freezed
          ? _value.goldenFolders
          : goldenFolders // ignore: cast_nullable_to_non_nullable
              as List<GoldenFolder>,
    ));
  }
}

/// @nodoc
abstract class _$$_TestFolderCopyWith<$Res>
    implements $TestFolderCopyWith<$Res> {
  factory _$$_TestFolderCopyWith(
          _$_TestFolder value, $Res Function(_$_TestFolder) then) =
      __$$_TestFolderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<TestFolder> subfolders,
      List<GoldenFolder> goldenFolders});
}

/// @nodoc
class __$$_TestFolderCopyWithImpl<$Res> extends _$TestFolderCopyWithImpl<$Res>
    implements _$$_TestFolderCopyWith<$Res> {
  __$$_TestFolderCopyWithImpl(
      _$_TestFolder _value, $Res Function(_$_TestFolder) _then)
      : super(_value, (v) => _then(v as _$_TestFolder));

  @override
  _$_TestFolder get _value => super._value as _$_TestFolder;

  @override
  $Res call({
    Object? name = freezed,
    Object? subfolders = freezed,
    Object? goldenFolders = freezed,
  }) {
    return _then(_$_TestFolder(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subfolders: subfolders == freezed
          ? _value._subfolders
          : subfolders // ignore: cast_nullable_to_non_nullable
              as List<TestFolder>,
      goldenFolders: goldenFolders == freezed
          ? _value._goldenFolders
          : goldenFolders // ignore: cast_nullable_to_non_nullable
              as List<GoldenFolder>,
    ));
  }
}

/// @nodoc

class _$_TestFolder implements _TestFolder {
  const _$_TestFolder(
      {required this.name,
      required final List<TestFolder> subfolders,
      required final List<GoldenFolder> goldenFolders})
      : _subfolders = subfolders,
        _goldenFolders = goldenFolders;

  @override
  final String name;
  final List<TestFolder> _subfolders;
  @override
  List<TestFolder> get subfolders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subfolders);
  }

  final List<GoldenFolder> _goldenFolders;
  @override
  List<GoldenFolder> get goldenFolders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goldenFolders);
  }

  @override
  String toString() {
    return 'TestFolder(name: $name, subfolders: $subfolders, goldenFolders: $goldenFolders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestFolder &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._subfolders, _subfolders) &&
            const DeepCollectionEquality()
                .equals(other._goldenFolders, _goldenFolders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_subfolders),
      const DeepCollectionEquality().hash(_goldenFolders));

  @JsonKey(ignore: true)
  @override
  _$$_TestFolderCopyWith<_$_TestFolder> get copyWith =>
      __$$_TestFolderCopyWithImpl<_$_TestFolder>(this, _$identity);
}

abstract class _TestFolder implements TestFolder {
  const factory _TestFolder(
      {required final String name,
      required final List<TestFolder> subfolders,
      required final List<GoldenFolder> goldenFolders}) = _$_TestFolder;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<TestFolder> get subfolders => throw _privateConstructorUsedError;
  @override
  List<GoldenFolder> get goldenFolders => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TestFolderCopyWith<_$_TestFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoldenFolder {
  String get name => throw _privateConstructorUsedError;
  List<GoldenFolder> get subfolders => throw _privateConstructorUsedError;
  List<GoldenImage> get goldenImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoldenFolderCopyWith<GoldenFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldenFolderCopyWith<$Res> {
  factory $GoldenFolderCopyWith(
          GoldenFolder value, $Res Function(GoldenFolder) then) =
      _$GoldenFolderCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<GoldenFolder> subfolders,
      List<GoldenImage> goldenImages});
}

/// @nodoc
class _$GoldenFolderCopyWithImpl<$Res> implements $GoldenFolderCopyWith<$Res> {
  _$GoldenFolderCopyWithImpl(this._value, this._then);

  final GoldenFolder _value;
  // ignore: unused_field
  final $Res Function(GoldenFolder) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? subfolders = freezed,
    Object? goldenImages = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subfolders: subfolders == freezed
          ? _value.subfolders
          : subfolders // ignore: cast_nullable_to_non_nullable
              as List<GoldenFolder>,
      goldenImages: goldenImages == freezed
          ? _value.goldenImages
          : goldenImages // ignore: cast_nullable_to_non_nullable
              as List<GoldenImage>,
    ));
  }
}

/// @nodoc
abstract class _$$_GoldenFolderCopyWith<$Res>
    implements $GoldenFolderCopyWith<$Res> {
  factory _$$_GoldenFolderCopyWith(
          _$_GoldenFolder value, $Res Function(_$_GoldenFolder) then) =
      __$$_GoldenFolderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<GoldenFolder> subfolders,
      List<GoldenImage> goldenImages});
}

/// @nodoc
class __$$_GoldenFolderCopyWithImpl<$Res>
    extends _$GoldenFolderCopyWithImpl<$Res>
    implements _$$_GoldenFolderCopyWith<$Res> {
  __$$_GoldenFolderCopyWithImpl(
      _$_GoldenFolder _value, $Res Function(_$_GoldenFolder) _then)
      : super(_value, (v) => _then(v as _$_GoldenFolder));

  @override
  _$_GoldenFolder get _value => super._value as _$_GoldenFolder;

  @override
  $Res call({
    Object? name = freezed,
    Object? subfolders = freezed,
    Object? goldenImages = freezed,
  }) {
    return _then(_$_GoldenFolder(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subfolders: subfolders == freezed
          ? _value._subfolders
          : subfolders // ignore: cast_nullable_to_non_nullable
              as List<GoldenFolder>,
      goldenImages: goldenImages == freezed
          ? _value._goldenImages
          : goldenImages // ignore: cast_nullable_to_non_nullable
              as List<GoldenImage>,
    ));
  }
}

/// @nodoc

class _$_GoldenFolder implements _GoldenFolder {
  const _$_GoldenFolder(
      {required this.name,
      required final List<GoldenFolder> subfolders,
      required final List<GoldenImage> goldenImages})
      : _subfolders = subfolders,
        _goldenImages = goldenImages;

  @override
  final String name;
  final List<GoldenFolder> _subfolders;
  @override
  List<GoldenFolder> get subfolders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subfolders);
  }

  final List<GoldenImage> _goldenImages;
  @override
  List<GoldenImage> get goldenImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goldenImages);
  }

  @override
  String toString() {
    return 'GoldenFolder(name: $name, subfolders: $subfolders, goldenImages: $goldenImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoldenFolder &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._subfolders, _subfolders) &&
            const DeepCollectionEquality()
                .equals(other._goldenImages, _goldenImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_subfolders),
      const DeepCollectionEquality().hash(_goldenImages));

  @JsonKey(ignore: true)
  @override
  _$$_GoldenFolderCopyWith<_$_GoldenFolder> get copyWith =>
      __$$_GoldenFolderCopyWithImpl<_$_GoldenFolder>(this, _$identity);
}

abstract class _GoldenFolder implements GoldenFolder {
  const factory _GoldenFolder(
      {required final String name,
      required final List<GoldenFolder> subfolders,
      required final List<GoldenImage> goldenImages}) = _$_GoldenFolder;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<GoldenFolder> get subfolders => throw _privateConstructorUsedError;
  @override
  List<GoldenImage> get goldenImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GoldenFolderCopyWith<_$_GoldenFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoldenImage {
  String get name => throw _privateConstructorUsedError;
  Device? get device => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  Theme? get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoldenImageCopyWith<GoldenImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldenImageCopyWith<$Res> {
  factory $GoldenImageCopyWith(
          GoldenImage value, $Res Function(GoldenImage) then) =
      _$GoldenImageCopyWithImpl<$Res>;
  $Res call({String name, Device? device, Locale? locale, Theme? theme});

  $DeviceCopyWith<$Res>? get device;
  $LocaleCopyWith<$Res>? get locale;
  $ThemeCopyWith<$Res>? get theme;
}

/// @nodoc
class _$GoldenImageCopyWithImpl<$Res> implements $GoldenImageCopyWith<$Res> {
  _$GoldenImageCopyWithImpl(this._value, this._then);

  final GoldenImage _value;
  // ignore: unused_field
  final $Res Function(GoldenImage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? device = freezed,
    Object? locale = freezed,
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme?,
    ));
  }

  @override
  $DeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value));
    });
  }

  @override
  $LocaleCopyWith<$Res>? get locale {
    if (_value.locale == null) {
      return null;
    }

    return $LocaleCopyWith<$Res>(_value.locale!, (value) {
      return _then(_value.copyWith(locale: value));
    });
  }

  @override
  $ThemeCopyWith<$Res>? get theme {
    if (_value.theme == null) {
      return null;
    }

    return $ThemeCopyWith<$Res>(_value.theme!, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }
}

/// @nodoc
abstract class _$$_GoldenImageCopyWith<$Res>
    implements $GoldenImageCopyWith<$Res> {
  factory _$$_GoldenImageCopyWith(
          _$_GoldenImage value, $Res Function(_$_GoldenImage) then) =
      __$$_GoldenImageCopyWithImpl<$Res>;
  @override
  $Res call({String name, Device? device, Locale? locale, Theme? theme});

  @override
  $DeviceCopyWith<$Res>? get device;
  @override
  $LocaleCopyWith<$Res>? get locale;
  @override
  $ThemeCopyWith<$Res>? get theme;
}

/// @nodoc
class __$$_GoldenImageCopyWithImpl<$Res> extends _$GoldenImageCopyWithImpl<$Res>
    implements _$$_GoldenImageCopyWith<$Res> {
  __$$_GoldenImageCopyWithImpl(
      _$_GoldenImage _value, $Res Function(_$_GoldenImage) _then)
      : super(_value, (v) => _then(v as _$_GoldenImage));

  @override
  _$_GoldenImage get _value => super._value as _$_GoldenImage;

  @override
  $Res call({
    Object? name = freezed,
    Object? device = freezed,
    Object? locale = freezed,
    Object? theme = freezed,
  }) {
    return _then(_$_GoldenImage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as Theme?,
    ));
  }
}

/// @nodoc

class _$_GoldenImage implements _GoldenImage {
  const _$_GoldenImage(
      {required this.name, this.device, this.locale, this.theme});

  @override
  final String name;
  @override
  final Device? device;
  @override
  final Locale? locale;
  @override
  final Theme? theme;

  @override
  String toString() {
    return 'GoldenImage(name: $name, device: $device, locale: $locale, theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoldenImage &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.theme, theme));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(device),
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(theme));

  @JsonKey(ignore: true)
  @override
  _$$_GoldenImageCopyWith<_$_GoldenImage> get copyWith =>
      __$$_GoldenImageCopyWithImpl<_$_GoldenImage>(this, _$identity);
}

abstract class _GoldenImage implements GoldenImage {
  const factory _GoldenImage(
      {required final String name,
      final Device? device,
      final Locale? locale,
      final Theme? theme}) = _$_GoldenImage;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Device? get device => throw _privateConstructorUsedError;
  @override
  Locale? get locale => throw _privateConstructorUsedError;
  @override
  Theme? get theme => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GoldenImageCopyWith<_$_GoldenImage> get copyWith =>
      throw _privateConstructorUsedError;
}

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
