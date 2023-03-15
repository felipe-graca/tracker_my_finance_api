import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shalf_io;

class CustomServer {
  Future<void> initialize({
    required Handler handler,
    required String address,
    required int port,
  }) async {
    await shalf_io.serve(handler, address, port);
    print('Server listening on $address:$port');
  }
}
