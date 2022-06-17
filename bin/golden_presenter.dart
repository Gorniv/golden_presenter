import 'package:golden_presenter/golden_presenter_bloc.dart';
import 'package:golden_presenter/structure_generator.dart';
import 'package:golden_presenter/structure_presenter.dart';
import 'package:golden_presenter/structure_saver.dart';

void main(List<String> arguments) async {
  final StructureGenerator structureGenerator = FileStructureGenerator();
  final StructurePresenter structurePresenter = HtmlStructurePresenter();
  final StructureSaver structureSaver = FileStructureSaver();

  final goldenPresenterBloc = GoldenPresenterBloc(
    structureGenerator: structureGenerator,
    structurePresenter: structurePresenter,
    structureSaver: structureSaver,
  );

  await goldenPresenterBloc.process();
}
