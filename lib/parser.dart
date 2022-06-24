import 'package:args/args.dart';

class Parser {
  Parser({required List<String> args}) {
    _argResults = _getParserResult(args);
    path = _argResults[_path];
    testPath = _argResults[_testPath];
    output = _argResults[_output];
    goldenFolder = _argResults[_goldenFolder];
    devicePattern = _argResults[_devicePattern];
    localePattern = _argResults[_localePattern];
    themePattern = _argResults[_themePattern];
    isHelp = _argResults[_help];
  }

  late final String path;
  late final String testPath;
  late final String output;
  late final String goldenFolder;
  late final String devicePattern;
  late final String localePattern;
  late final String themePattern;
  late final bool isHelp;

  late final ArgResults _argResults;

  static const String _path = 'path';
  static const String _testPath = 'test-path';
  static const String _output = 'output';
  static const String _goldenFolder = 'golden-folder';
  static const String _devicePattern = 'device-pattern';
  static const String _localePattern = 'locale-pattern';
  static const String _themePattern = 'theme-pattern';
  static const String _help = 'help';

  final ArgParser _parser = ArgParser();

  ArgResults _getParserResult(List<String> args) {
    _parser.addOption(
      _path,
      abbr: 'p',
      defaultsTo: '.',
      help:
          'Path to test folder. For example: /Users/user/projects/awesome-app/test .',
    );
    _parser.addOption(
      _testPath,
      abbr: 't',
      defaultsTo: 'screens',
      help:
          'Path to golden test inside projects\' test folder. For example: screens .',
    );

    _parser.addOption(
      _output,
      abbr: 'o',
      defaultsTo: 'output.html',
      help: 'The output (result) file name.',
    );

    _parser.addOption(
      _goldenFolder,
      abbr: 'g',
      defaultsTo: 'golden',
      help: 'The folder which consists golden images. For example: golden .',
    );

    _parser.addOption(
      _devicePattern,
      defaultsTo: r'^(.*?)[\%\(\.]',
      help: 'The regexp to get a device name from the golden image file name.',
    );
    _parser.addOption(
      _localePattern,
      defaultsTo: r'\((.*?)\)',
      help: 'The regexp to get a locale name from the golden image file name.',
    );
    _parser.addOption(
      _themePattern,
      defaultsTo: r'%5B(.*?)%5D',
      help: 'The regexp to get a theme name from the golden image file name.',
    );

    _parser.addFlag(
      _help,
      abbr: 'h',
      negatable: false,
      help: 'This help.',
    );

    return _parser.parse(args);
  }

  @override
  String toString() => _parser.usage;
}
