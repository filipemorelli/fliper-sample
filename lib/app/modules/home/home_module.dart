import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'repositories/summary_repository.dart';
import 'widgets/summary_card/summary_card_controller.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SummaryRepository(i.get<HasuraConnect>())),
        $SummaryCardController,
        $HomeController,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => HomePage()),
      ];
}
