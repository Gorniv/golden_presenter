import 'structure_model.dart';

class GoldenImageFactory {
  GoldenImageFactory({
    required this.devicePattern,
    required this.localePattern,
    required this.themePattern,
  });
  final String devicePattern;
  final String localePattern;
  final String themePattern;

  static const String _unknownName = 'unknown';

  GoldenImage build({required String name, required String path}) {
    return GoldenImage(
      name: name,
      path: path,
      device: _getDevice(name),
      locale: _getLocale(name),
      theme: _getTheme(name),
    );
  }

  Device _getDevice(String source) {
    final name = _getRegExpMatch(source: source, pattern: devicePattern);
    return Device(name: name);
  }

  Locale _getLocale(String source) {
    final name = _getRegExpMatch(source: source, pattern: localePattern);
    return Locale(name: name);
  }

  Theme _getTheme(String source) {
    final name = _getRegExpMatch(source: source, pattern: themePattern);
    return Theme(name: name);
  }

  String _getRegExpMatch({required String source, required String pattern}) {
    final regExp = RegExp(pattern);
    final matches = regExp.firstMatch(source);
    if (matches != null && matches.groupCount > 0) {
      return matches.group(1) ?? _unknownName;
    }
    return _unknownName;
  }
}
