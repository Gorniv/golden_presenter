import 'structure_model.dart';

abstract class StructureSaver {
  Future<void> save({required GoldenPresenterResult goldenPresenterResult});
}

class FileStructureSaver implements StructureSaver {
  @override
  Future<void> save({required GoldenPresenterResult goldenPresenterResult}) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
