import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class TrackerFinanceServerHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request request) {
      return Response(200, body: 'Hello World!');
    });

    router.get('/user/<id>', (Request request, String id) {
      return Response(200, body: 'Helo user:, $id');
    });

    router.get('/query', (Request request) {
      String? userName = request.url.queryParameters['name'];
      return Response.ok('Olá, ${userName ?? 'Error: null'}');
    });

    return router;
  }
}
