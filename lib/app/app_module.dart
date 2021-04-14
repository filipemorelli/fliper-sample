import 'package:fliper/app/modules/home/home_controller.dart';
import 'package:fliper/app/modules/home/home_page.dart';
import 'package:fliper/app/modules/home/repositories/summary_repository.dart';
import 'package:fliper/app/app_constants.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'modules/home/repositories/summary_repository.dart';

class AppModule extends Module {
  final String _url = GRAPHQL_ENDPOINT;

  @override
  List<Bind> get binds => [
        $HomeController,
        Bind(
          (i) => HasuraConnect(_url, headers: <String, String>{
            'content-type': 'application/json',
            'x-hasura-admin-secret': HASURA_ADMIN_SECRET,
          }),
        ),
        Bind((i) => SummaryRepository(i.get<HasuraConnect>())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
  ];
}
