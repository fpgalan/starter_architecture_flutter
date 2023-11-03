import 'dart:io';

import 'package:dio/dio.dart';

final api = Dio(BaseOptions(
  baseUrl: 'http://dogsandcats.dev',
  contentType: Headers.jsonContentType,
  responseType: ResponseType.json,
));

class ApiClient {
  // TODO: Configuracion de cliente de api, clase donde se controlen responses y errors
  // de forma personalizada (en vez de usar dio directamente)
}
