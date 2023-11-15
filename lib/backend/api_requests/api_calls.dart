import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start template Group Code

class TemplateGroup {
  static String baseUrl = 'http://pocketbase.proplayclub.ru/api';
  static Map<String, String> headers = {};
}

/// End template Group Code

/// Start USER Group Code

class UserGroup {
  static String baseUrl =
      'http://pocketbase.proplayclub.ru/api/collections/users/';
  static Map<String, String> headers = {};
  static AddCall addCall = AddCall();
  static UserslistCall userslistCall = UserslistCall();
  static UploadAvatarCall uploadAvatarCall = UploadAvatarCall();
}

class AddCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? password = '',
    String? passwordConfirm = '',
    String? nickname = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ADD',
      apiUrl: '${UserGroup.baseUrl}records',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'TOKEN',
      },
      params: {
        'username': username,
        'email': email,
        'password': password,
        'passwordConfirm': passwordConfirm,
        'nickname': nickname,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserslistCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'USERSLIST',
      apiUrl: '${UserGroup.baseUrl}records',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'TOKEN',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      );
  dynamic avatar(dynamic response) => getJsonField(
        response,
        r'''$.items[:].avatar''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.items[:].id''',
        true,
      );
  dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.items[:].username''',
        true,
      );
}

class UploadAvatarCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? avatar,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Upload Avatar',
      apiUrl: '${UserGroup.baseUrl}records',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'avatar': avatar,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End USER Group Code

class AuthorizationCall {
  static Future<ApiCallResponse> call({
    String? identity = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AUTHORIZATION',
      apiUrl:
          'http://pocketbase.proplayclub.ru/api/collections/users/auth-with-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'identity': identity,
        'password': password,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic record(dynamic response) => getJsonField(
        response,
        r'''$.record''',
      );
  static dynamic recordcollectionId(dynamic response) => getJsonField(
        response,
        r'''$.record.collectionId''',
      );
  static dynamic recordcollectionName(dynamic response) => getJsonField(
        response,
        r'''$.record.collectionName''',
      );
  static dynamic recordcreated(dynamic response) => getJsonField(
        response,
        r'''$.record.created''',
      );
  static dynamic recordemail(dynamic response) => getJsonField(
        response,
        r'''$.record.email''',
      );
  static dynamic recordemailVisibility(dynamic response) => getJsonField(
        response,
        r'''$.record.emailVisibility''',
      );
  static dynamic recordid(dynamic response) => getJsonField(
        response,
        r'''$.record.id''',
      );
  static dynamic recordupdated(dynamic response) => getJsonField(
        response,
        r'''$.record.updated''',
      );
  static dynamic recordusername(dynamic response) => getJsonField(
        response,
        r'''$.record.username''',
      );
  static dynamic recordverified(dynamic response) => getJsonField(
        response,
        r'''$.record.verified''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
