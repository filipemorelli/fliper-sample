import 'package:fliper/app/modules/home/repositories/summary_repository.dart';
import 'package:fliper/app/modules/home/models/SummaryModel.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  _HomeControllerBase(this.repository) {
    repository.getSummary().then((value) => summaryModel = value);
  }

  final SummaryRepository repository;

  @observable
  int value = 0;

  @observable
  List<SummaryModel> summaryModel = <SummaryModel>[];

  @action
  Future<void> refresh() async {
    summaryModel = await repository.getSummary();
  }
}
