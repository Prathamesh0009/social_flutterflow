import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProfileDetailsCall {
  static Future<ApiCallResponse> call({
    String? name = 'name',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile Details',
      apiUrl: 'https://t6b6e5ir7a.execute-api.us-east-1.amazonaws.com/test',
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

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.obj.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.obj.email''',
      ));
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.obj.image''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.body.obj.description''',
      ));
  static int? followers(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.body.obj.followers''',
      ));
  static int? following(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.body.obj.following''',
      ));
  static int? customers(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.body.obj.customers''',
      ));
  static int? products(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.body.obj.products''',
      ));
  static int? reviews(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.body.obj.reviews''',
      ));
  static int? posts(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.body.obj.posts''',
      ));
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
