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
    final tags = StringBuffer();
    tags.write('<ul>');
    for (final rootTestFolder in rootTestFolders) {
      tags.write('<li>');
      tags.write(_addFolder(rootTestFolder));
      tags.write('</li>');
    }
    tags.write('</ul>');
    return tags.toString();
  }

  String _addFolder(Element testFolder) {
    final tags = StringBuffer();
    tags.write('<h1>${testFolder.name}</h1>');
    tags.write('<ul>');
    tags.write(_addFolders(testFolder.subElements));
    tags.write(_addGoldenImages(testFolder.subElements));
    tags.write('</ul>');
    return tags.toString();
  }

  String _addFolders(List<Element> elements) {
    final folders = elements.where((e) => e is! GoldenImage);
    final tags = StringBuffer();
    for (final folder in folders) {
      tags.write('<li>');
      tags.write(_addFolder(folder));
      tags.write('</li>');
    }
    return tags.toString();
  }

  String _addGoldenImages(List<Element> elements) {
    final folders = elements.whereType<GoldenImage>().toList();
    folders.sort(_imageSortRule);
    final tags = StringBuffer();
    tags.write('<li>');
    for (final folder in folders) {
      tags.write(_addGoldenImage(folder));
    }
    tags.write('</li>');
    return tags.toString();
  }

  int _imageSortRule(GoldenImage a, GoldenImage b) {
    final compareByDevice = a.device.name.compareTo(b.device.name);
    if (compareByDevice != 0) {
      return compareByDevice;
    }
    final compareByTheme = a.theme.name.compareTo(b.theme.name);
    if (compareByTheme != 0) {
      return -compareByTheme;
    }
    return a.locale.name.compareTo(b.locale.name);
  }

  String _addGoldenImage(GoldenImage innerGoldenImage) {
    return '<img src="${innerGoldenImage.path}"/>';
  }
}
