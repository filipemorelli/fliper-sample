import 'package:fliper/app/modules/home/repositories/summary_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock {}

void main() {
  SummaryRepository repository;
  // MockClient client;

  setUp(() {
    // repository = SummaryRepository();
    // client = MockClient();
  });

  group('SummaryRepository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<SummaryRepository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}
