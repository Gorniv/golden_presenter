import 'dart:io';

import 'structure_model.dart';

abstract class StructureGenerator {
  Future<TestFolder> generate();
}

class FileStructureGenerator implements StructureGenerator {
  FileStructureGenerator({
    required this.path,
  });

  final String path;

  @override
  Future<TestFolder> generate() async {
    // TODO: implement generate
    throw UnimplementedError();
    final dir = Directory('.');
    final List<FileSystemEntity> entities =
        await dir.list(recursive: true).toList();
    // print(entities[0].);
  }
}
