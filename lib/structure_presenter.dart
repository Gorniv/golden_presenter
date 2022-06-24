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
      rootFolderTags.write(_addFolder(rootTestFolder));
      rootFolderTags.write('</li>');
    }
    rootFolderTags.write('</ul>');
    return rootFolderTags.toString();
  }

  String _addElement(Element element) {
    if (element is GoldenImage) {
      return _addGoldenImage(element);
    }
    return _addFolder(element);
  }

  String _addFolder(Element testFolder) {
    final testFolderTags = StringBuffer();
    testFolderTags.write('<h1>${testFolder.name}</h1>');
    testFolderTags.write('<ul>');
    for (final innerTestFolder in testFolder.subElements) {
      testFolderTags.write('<li>');
      testFolderTags.write(_addElement(innerTestFolder));
      testFolderTags.write('</li>');
    }
    testFolderTags.write('</ul>');
    return testFolderTags.toString();
  }

  String _addGoldenImage(GoldenImage innerGoldenImage) {
    return '<img src="${innerGoldenImage.path}"/>';
  }
}
