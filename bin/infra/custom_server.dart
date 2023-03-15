import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shalf_io;

class CustomServer {
  Future<void> initialize(Handler handler) async {
    String address = 'localhost';
    int port = 8080;

    await shalf_io.serve(handler, address, port);
    print('Server listening on $address:$port');
  }
}
