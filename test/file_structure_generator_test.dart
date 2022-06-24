import 'package:golden_presenter/golden_image_factory.dart';
import 'package:golden_presenter/structure_generator.dart';
import 'package:golden_presenter/structure_model.dart';
import 'package:test/test.dart';

import 'mock/mock_directory.dart';

void main() {
  group('Presenter -', () {
    test('FileStructureGenerator', () async {
      final fileStructureGenerator = FileStructureGenerator(
        directoryProvider: MockDirectory(
            path: '/Users/cyrax/projects/work/international-mobile-app/test',
            files: [
              'screens/settings/super_settings/one_more_setting/golden/language/switch_language/iPhone5S.png',
              'screens/settings/super_settings/one_more_setting/golden/language/switch_language/iphone11[dark].png',
              'screens/settings/super_settings/one_more_setting/golden/language/switch_language/iphone11[light](en-US).png'
            ]),
        goldenImageFactory: GoldenImageFactory(
          devicePattern: r'^(.*?)[\%\(\.]',
          localePattern: r'\((.*?)\)',
          themePattern: r'%5B(.*?)%5D',
        ),
        pathToTest: 'screens/',
        goldenPathName: 'golden',
      );
      final generatedStructure = await fileStructureGenerator.generate();
      expect(
        generatedStructure,
        [
          TestFolder(
            name: 'settings',
            subfolders: [
              TestFolder(
                name: 'super_settings',
                subfolders: [
                  TestFolder(
                    name: 'one_more_setting',
                    goldenFolders: [
                      GoldenFolder(
                        name: 'language',
                        subfolders: [
                          GoldenFolder(
                            name: 'switch_language',
                            goldenImages: [
                              GoldenImage(
                                name: 'iPhone5S',
                                path:
                                    '/Users/cyrax/projects/work/international-mobile-app/test/screens/settings/super_settings/one_more_setting/golden/language/switch_language/iPhone5S.png',
                                device: const Device(name: 'iPhone5S'),
                                locale: const Locale(
                                    name: GoldenImageFactory.unknownName),
                                theme: const Theme(
                                    name: GoldenImageFactory.unknownName),
                              ),
                              GoldenImage(
                                name: 'iphone11',
                                path:
                                    '/Users/cyrax/projects/work/international-mobile-app/test/screens/settings/super_settings/one_more_setting/golden/language/switch_language/iphone11[dark].png',
                                device: const Device(name: 'iphone11'),
                                locale: const Locale(
                                    name: GoldenImageFactory.unknownName),
                                theme: const Theme(name: 'dark'),
                              ),
                              GoldenImage(
                                name: 'iphone11',
                                path:
                                    '/Users/cyrax/projects/work/international-mobile-app/test/screens/settings/super_settings/one_more_setting/golden/language/switch_language/iphone11[light](en-US).png',
                                device: const Device(name: 'iphone11'),
                                locale: const Locale(name: 'en-US'),
                                theme: const Theme(name: 'light'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    });
  });
}
