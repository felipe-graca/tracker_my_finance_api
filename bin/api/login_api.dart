import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class LoginApi {
  Handler get handler {
    Router router = Router();

    router.post('/login', (Request request) async {
      return Response.ok('Login Api');
    });

    return router;
  }
}
