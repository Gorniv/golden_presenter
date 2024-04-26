import 'dart:io';

import 'package:path/path.dart' as pth;

import 'golden_image_factory.dart';
import 'structure_model.dart';

abstract class StructureGenerator {
  Future<List<TestFolder>> generate();
}

class FileStructureGenerator implements StructureGenerator {
  FileStructureGenerator({
    required this.pathToTest,
    required this.goldenPathName,
    required Directory directoryProvider,
    required GoldenImageFactory goldenImageFactory,
  })  : _directory = directoryProvider,
        _goldenImageFactory = goldenImageFactory;

  final Directory _directory;

  final String pathToTest;
  final String goldenPathName;

  final GoldenImageFactory _goldenImageFactory;

  List<TestFolder> testFoldersResult = [];

  @override
  Future<List<TestFolder>> generate() async {
    await _directory.list(recursive: true).forEach((entity) {
      if (entity is! File) {
        return;
      }
      String ext = pth.extension(entity.uri.path);
      if (ext != '.png') {
        return;
      }
      final relativePath = _getRelativePath(entity.uri.path);
      _addTestFolderToResult(
        relativeFile: relativePath,
        absoluteFile: entity.uri.path,
      );
    });
    print('found folders == ${testFoldersResult.length}');
    return testFoldersResult;
  }

  String _getRelativePath(String absolutePath) {
    final pathForRemove = pth.join(_directory.path, pathToTest);
    return pth.relative(absolutePath, from: pathForRemove);
  }

  void _addTestFolderToResult({
    required String relativeFile,
    required String absoluteFile,
  }) {
    final strFolders = pth.split(relativeFile);

    // test folder
    List<Element> parentTestFolder = testFoldersResult;
    late Element foundTestFolder;
    int lastFolderIndex = strFolders.length - 2;
    int testFolderIndex;
    for (testFolderIndex = 0;
        testFolderIndex <= lastFolderIndex;
        testFolderIndex++) {
      final testFolder = strFolders[testFolderIndex];
      if (testFolder == goldenPathName) {
        break;
      }
      foundTestFolder = parentTestFolder.firstWhere(
        (e) => e.name == testFolder,
        orElse: () {
          final newTestFolder = TestFolder(name: testFolder);
          parentTestFolder.add(newTestFolder);
          return newTestFolder;
        },
      );
      parentTestFolder = foundTestFolder.subElements;
    }

    // golden folder
    List<Element> parentGoldenFolder = foundTestFolder.subElements;
    List<Element> goldenImages = [];
    for (int testGoldenIndex = testFolderIndex;
        testGoldenIndex <= lastFolderIndex;
        testGoldenIndex++) {
      final folder = strFolders[testGoldenIndex];
      final foundFolder = parentGoldenFolder.firstWhere(
        (e) => e.name == folder,
        orElse: () {
          final newGoldenFolder = GoldenFolder(name: folder);
          parentGoldenFolder.add(newGoldenFolder);
          return newGoldenFolder;
        },
      );
      parentGoldenFolder = foundFolder.subElements;
      goldenImages = foundFolder.subElements;
    }

    // golden image
    int imageFileIndex = strFolders.length - 1;
    final image = strFolders[imageFileIndex];
    goldenImages.firstWhere(
      (e) => e.name == image,
      orElse: () {
        final newGoldenImage = _goldenImageFactory.build(
          name: image,
          path: absoluteFile,
        );
        goldenImages.add(newGoldenImage);
        return newGoldenImage;
      },
    );
  }
}
