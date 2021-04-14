import 'dart:developer';

import 'package:fliper/app/modules/home/models/SummaryModel.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

part 'summary_repository.g.dart';

@Injectable()
class SummaryRepository extends Disposable {
  final HasuraConnect connection;

  SummaryRepository(this.connection);

  Future<List<SummaryModel>> getSummary() async {
    String query = """ 
    query FliperSummary {
      wealthSummary {
        cdi
        gain
        id
        profitability
        total
        hasHistory
      }
    }
    """;

    try {
      var result = await connection.query(query);
      return List<SummaryModel>.from(
        (result["data"]["wealthSummary"] as List<dynamic>)
            .map((dynamic source) => SummaryModel.fromMap(source as Map<String, dynamic>)),
      ).toList();
    } catch (e, stackTrace) {
      log(e.toString(), name: 'SummaryRepository.getSummary', stackTrace: stackTrace);
      return Future<List<SummaryModel>>.error(e, stackTrace);
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
