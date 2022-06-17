import 'package:golden_presenter/structure_generator.dart';
import 'package:golden_presenter/structure_presenter.dart';
import 'package:golden_presenter/structure_saver.dart';

class GoldenPresenterBloc {
  GoldenPresenterBloc({
    required StructureGenerator structureGenerator,
    required StructurePresenter structurePresenter,
    required StructureSaver structureSaver,
  })  : _structureGenerator = structureGenerator,
        _structurePresenter = structurePresenter,
        _structureSaver = structureSaver;

  final StructureGenerator _structureGenerator;
  final StructurePresenter _structurePresenter;
  final StructureSaver _structureSaver;
  Future<void> process() async {
    final structure = await _structureGenerator.generate();
    final presentation = _structurePresenter.generate(testFolder: structure);
    await _structureSaver.save(goldenPresenterResult: presentation);
  }
}
