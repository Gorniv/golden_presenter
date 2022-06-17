import 'package:freezed_annotation/freezed_annotation.dart';

part 'structure_model.freezed.dart';

@freezed
class TestFolder with _$TestFolder {
  const factory TestFolder({
    required String name,
    required List<TestFolder> subfolders,
    required List<GoldenFolder> goldenFolders,
  }) = _TestFolder;
}

@freezed
class GoldenFolder with _$GoldenFolder {
  const factory GoldenFolder({
    required String name,
    required List<GoldenFolder> subfolders,
    required List<GoldenImage> goldenImages,
  }) = _GoldenFolder;
}

@freezed
class GoldenImage with _$GoldenImage {
  const factory GoldenImage({
    required String name,
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
