import 'dart:io';

import 'structure_model.dart';

abstract class StructureSaver {
  Future<void> save({required GoldenPresenterResult goldenPresenterResult});
}

class FileStructureSaver implements StructureSaver {
  @override
  Future<void> save(
      {required GoldenPresenterResult goldenPresenterResult}) async {
    final newFile = File('output.html');
    await newFile.writeAsString(goldenPresenterResult.body);
  }
}
