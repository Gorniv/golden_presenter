// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'structure_model.dart';

abstract class StructureSaver {
  Future<void> save({required GoldenPresenterResult goldenPresenterResult});
}

class FileStructureSaver implements StructureSaver {
  FileStructureSaver({
    required this.outputFileName,
  });
  final String outputFileName;
  @override
  Future<void> save(
      {required GoldenPresenterResult goldenPresenterResult}) async {
    final newFile = File(outputFileName);
    print('save to $newFile');
    await newFile.writeAsString(goldenPresenterResult.body);
    print('finish');
  }
}
