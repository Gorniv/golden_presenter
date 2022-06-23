import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'structure_model.freezed.dart';

class TestFolder extends Equatable {
  TestFolder({required this.name});
  TestFolder.empty() : name = '';

  final String name;
  final List<TestFolder> subfolders = [];
  final List<GoldenFolder> goldenFolders = [];

  bool get isEmpty => name.isEmpty;

  @override
  List<Object?> get props => [name];
}

class GoldenFolder extends Equatable {
  GoldenFolder({required this.name});

  final String name;
  final List<GoldenFolder> subfolders = [];
  final List<GoldenImage> goldenImages = [];

  @override
  List<Object?> get props => [name];
}

@freezed
class GoldenImage with _$GoldenImage {
  const factory GoldenImage({
    required String name,
    required String path,
    Device? device,
    Locale? locale,
    Theme? theme,
  }) = _GoldenImage;
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
