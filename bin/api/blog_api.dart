import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class BlogApi {
  Handler get handler {
    Router router = Router();

    router.get('/blog/notices', (Request request) async {
      return Response.ok('today rain');
    });

    return router;
  }
}
