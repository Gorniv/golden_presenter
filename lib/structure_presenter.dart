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
    return '''
    <html>
    <head>
 <style>
        .image-gallery ul {
            display: flex;
            flex-wrap: wrap;
            list-style-type: none;
            padding: 0;
            margin: 0;
            width: 100%; /* Full width to contain flex items properly */
            justify-content: space-around; /* Distributes space between and around items evenly */
        }
        
        .gallery-item {
            flex: 1 0 21%; /* Adjust this percentage based on your preference for number of columns */
            margin: 5px;
            box-sizing: border-box; /* Includes padding and border in the element's total width */
            cursor: pointer;
            position: relative;
            min-width: 150px; /* Minimum width for each item to handle smaller screens gracefully */
            max-width: 13%; /* Ensures that items do not stretch improperly */
        }
        
        .gallery-item img {
            width: 100%; /* Ensures images stretch to fill their container */
            height: auto;
            transition: transform 0.3s ease;
        }
        
        .gallery-item:hover img {
            transform: scale(1.05);
        }
        
        .gallery-item span {
            display: block;
            text-align: center;
            margin-bottom: 12px;
        }
        
        #image-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            align-items: center;
            justify-content: center;
            z-index: 1000;
        }
        
        #modal-image {
            max-width: 90%;
            max-height: 90%;
        }
    </style>
    <script>
        function showImage(imgSrc) {
            document.getElementById('modal-image').src = imgSrc.replace("[", "%5B").replace("]", "%5D");
            document.getElementById('image-modal').style.display = 'flex';
        }

        function hideImage() {
            document.getElementById('image-modal').style.display = 'none';
        }

    </script>
    </head>
      <div id="image-modal" onclick="hideImage()">
            <img id="modal-image" src="#" alt="Enlarged view" />
      </div>
    $innerTag
    </html>
    ''';
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

    // final haveImages = testFolder.subElements.whereType<GoldenImage>().isNotEmpty;
    // if (haveImages) {
    tags.write('<div class="image-gallery">');
    // }
    tags.write('<ul>');
    tags.write(_addFolders(testFolder.subElements));
    tags.write(_addGoldenImages(testFolder.subElements));
    tags.write('</ul>');
    // if (haveImages) {
    tags.write('</div>');
    // }
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
    final images = elements.whereType<GoldenImage>().toList();
    images.sort(_imageSortRule);
    final tags = StringBuffer();
    for (final image in images) {
      tags.write(
          '<li class="gallery-item" onclick="showImage(\'${image.path}\')">');
      tags.write(_addGoldenImage(image));
      tags.write('</li>');
    }
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
    return '<span>${innerGoldenImage.name.replaceAll('%5B', '[').replaceAll('%5D', ']')}</span><img src="${innerGoldenImage.path}" alt="${innerGoldenImage.name}"/>';
  }
}
