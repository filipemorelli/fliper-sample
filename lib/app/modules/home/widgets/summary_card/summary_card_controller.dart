import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'summary_card_controller.g.dart';

@Injectable()
class SummaryCardController = _SummaryCardControllerBase
    with _$SummaryCardController;

abstract class _SummaryCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
