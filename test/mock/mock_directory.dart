import 'dart:io';

import 'package:test/fake.dart';

class MockDirectory extends Fake implements Directory {
  MockDirectory({
    required this.path,
    required this.files,
  });

  @override
  String path;
  List<String> files;

  @override
  Stream<FileSystemEntity> list(
      {bool recursive = false, bool followLinks = true}) async* {
    for (final file in files) {
      yield File('$path/$file');
    }
  }
}
