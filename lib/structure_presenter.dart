import 'structure_model.dart';

abstract class StructurePresenter {
  GoldenPresenterResult generate({required TestFolder testFolder});
}

class HtmlStructurePresenter implements StructurePresenter {
  @override
  GoldenPresenterResult generate({required TestFolder testFolder}) {
    // TODO: implement generate
    throw UnimplementedError();
  }
}
