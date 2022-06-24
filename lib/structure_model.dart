import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'structure_model.freezed.dart';

// for rebuild models run:
// dart run build_runner build

abstract class Element {
  String get name;
  List<Element> get subElements => const [];
}

class TestFolder extends Element with EquatableMixin {
  TestFolder({
    required this.name,
    List<Element>? subElements,
  }) : subElements = subElements ?? [];

  TestFolder.empty()
      : name = '',
        subElements = [];

  @override
  final String name;
  @override
  final List<Element> subElements;

  bool get isEmpty => name.isEmpty;

  @override
  List<Object?> get props => [name];
}

class GoldenFolder extends Element with EquatableMixin {
  GoldenFolder({
    required this.name,
    List<Element>? subElements,
  }) : subElements = subElements ?? [];

  @override
  final String name;
  @override
  final List<Element> subElements;

  @override
  List<Object?> get props => [name];
}

class GoldenImage extends Element with EquatableMixin {
  GoldenImage({
    required this.name,
    required this.path,
    required this.device,
    required this.locale,
    required this.theme,
  });

  final String name;
  final String path;
  final Device device;
  final Locale locale;
  final Theme theme;

  @override
  List<Object?> get props => [name, device, locale, theme];
}

@freezed
class Device with _$Device {
  const factory Device({
    required String name,
  }) = _Device;
}

@freezed
class Locale with _$Locale {
  const factory Locale({
    required String name,
  }) = _Locale;
}

@freezed
class Theme with _$Theme {
  const factory Theme({
    required String name,
  }) = _Theme;
}

@freezed
class GoldenPresenterResult with _$GoldenPresenterResult {
  const factory GoldenPresenterResult({
    required String body,
  }) = _GoldenPresenterResult;
}
