import 'structure_model.dart';

abstract class StructurePresenter {
  GoldenPresenterResult generate({required List<TestFolder> testFolder});
}

class HtmlStructurePresenter implements StructurePresenter {
  @override
  GoldenPresenterResult generate({required List<TestFolder> testFolder}) {
    return GoldenPresenterResult(body: _addHtml(_addRootFolders(testFolder)));
  }

  String _addHtml(String innerTag) {
    return '<html>$innerTag</html>';
  }

  String _addRootFolders(List<TestFolder> rootTestFolders) {
    final rootFolderTags = StringBuffer();
    rootFolderTags.write('<ul>');
    for (final rootTestFolder in rootTestFolders) {
      rootFolderTags.write('<li>');
      rootFolderTags.write(_addTestFolder(rootTestFolder));
      rootFolderTags.write('</li>');
    }
    rootFolderTags.write('</ul>');
    return rootFolderTags.toString();
  }

  String _addTestFolder(TestFolder testFolder) {
    final testFolderTags = StringBuffer();
    testFolderTags.write('<h1>${testFolder.name}</h1>');
    testFolderTags.write('<ul>');
    for (final innerTestFolder in testFolder.subfolders) {
      testFolderTags.write('<li>');
      testFolderTags.write(_addTestFolder(innerTestFolder));
      testFolderTags.write('</li>');
    }
    for (final innerGoldenFolder in testFolder.goldenFolders) {
      testFolderTags.write('<li>');
      testFolderTags.write(_addGoldenFolder(innerGoldenFolder));
      testFolderTags.write('</li>');
    }
    testFolderTags.write('</ul>');
    return testFolderTags.toString();
  }

  String _addGoldenFolder(GoldenFolder goldenFolder) {
    final goldenFolderTags = StringBuffer();
    goldenFolderTags.write('<h1>${goldenFolder.name}</h1>');
    goldenFolderTags.write('<ul>');
    for (final innerGoldenFolder in goldenFolder.subfolders) {
      goldenFolderTags.write('<li>');
      goldenFolderTags.write(_addGoldenFolder(innerGoldenFolder));
      goldenFolderTags.write('</li>');
    }
    for (final innerGoldenImage in goldenFolder.goldenImages) {
      goldenFolderTags.write('<li>');
      goldenFolderTags.write(_addGoldenImage(innerGoldenImage));
      goldenFolderTags.write('</li>');
    }
    goldenFolderTags.write('</ul>');
    return goldenFolderTags.toString();
  }

  String _addGoldenImage(GoldenImage innerGoldenImage) {
    return '<img src="${innerGoldenImage.path}" />';
  }
}
