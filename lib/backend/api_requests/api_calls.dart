import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'products ',
      apiUrl: 'https://nagaadhalls.com/api/products/get_products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? productpath(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
  static List<String>? titlepath(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? pricepath(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? uniquepath(dynamic response) => (getJsonField(
        response,
        r'''$.unique_types''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idpath(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
}

class OdooAuthenticationCall {
  static Future<ApiCallResponse> call({
    String? user = '',
    String? pass = '',
  }) async {
    final ffApiRequestBody = '''
{
  "jsonrpc": "2.0",
  "method": "call",
  "params": {
    "db": "postgres",
    "login": "${user}",
    "password": "${pass}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OdooAuthentication',
      apiUrl: 'https://nagaadhalls.com/web/session/authenticate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Connection': 'keep-alive',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
