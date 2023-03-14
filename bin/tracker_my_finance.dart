import 'package:shelf/shelf_io.dart' as shalf_io;

import 'server_handler.dart';

void main() async {
  var serverHandler = TrackerFinanceServerHandler();

  final server = await shalf_io.serve(
    serverHandler.handler,
    'localhost',
    8080,
  );

  print('Nosso servidor foi iniciado em: http://${server.address.host}:${server.port}');
}
