import 'dart:io';

import 'package:golden_presenter/golden_image_factory.dart';
import 'package:golden_presenter/golden_presenter_bloc.dart';
import 'package:golden_presenter/parser.dart';
import 'package:golden_presenter/structure_generator.dart';
import 'package:golden_presenter/structure_presenter.dart';
import 'package:golden_presenter/structure_saver.dart';

void main(List<String> args) async {
  final parser = Parser(args: args);

  if (parser.isHelp) {
    print(parser);
  }

  final StructureGenerator structureGenerator = FileStructureGenerator(
    directoryProvider: Directory(parser.path),
    goldenImageFactory: GoldenImageFactory(
      devicePattern: parser.devicePattern,
      localePattern: parser.localePattern,
      themePattern: parser.themePattern,
    ),
    pathToTest: parser.testPath,
    goldenPathName: parser.goldenFolder,
  );
  final StructurePresenter structurePresenter = HtmlStructurePresenter();
  final StructureSaver structureSaver =
      FileStructureSaver(outputFileName: parser.output);

  final goldenPresenterBloc = GoldenPresenterBloc(
    structureGenerator: structureGenerator,
    structurePresenter: structurePresenter,
    structureSaver: structureSaver,
  );

  await goldenPresenterBloc.process();
}
