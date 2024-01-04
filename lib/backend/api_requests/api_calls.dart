import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start firebaseStorage Group Code

class FirebaseStorageGroup {
  static String baseUrl =
      'https://firebasestorage.googleapis.com/v0/b/neomart-pro.appspot.com';
  static Map<String, String> headers = {};
  static ParentBucketCall parentBucketCall = ParentBucketCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
}

class ParentBucketCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'parentBucket',
      apiUrl: '${FirebaseStorageGroup.baseUrl}/o',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? url(dynamic response) => getJsonField(
        response,
        r'''$.items[:].name''',
        true,
      ) as List?;
}

class DeleteFileCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '${FirebaseStorageGroup.baseUrl}/o',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? url(dynamic response) => getJsonField(
        response,
        r'''$.items[:].name''',
        true,
      ) as List?;
}

/// End firebaseStorage Group Code

/// Start GPTapi Group Code

class GPTapiGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic? promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${GPTapiGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? messageContent(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End GPTapi Group Code

/// Start instagram and facebook Group Code

class InstagramAndFacebookGroup {
  static String baseUrl =
      'GET https://graph.instagram.com/v12.0/me/media?fields=id,permalink,media_type,thumbnail_url,like_count&access_token=EAAxUN1M3p9UBOw8h7OhpHD76wH9OFYLQZAqu1A6cpmWUp5b2yuCXDyMcZCOJoGA0RZADflVr8dh9TFynjYZBg0bZBYZApqfUCq2bVYgft4AZCHVTQH4jH5xJBgTtQ7OlFBLp4j6RRvgVQQNmAsAQqqCOD3vnZCDNIEPBIPxONIHeD3kxq5fSfgha8gwbGyEYZByl8YnZCgK15EGdiu1oInZCM0pykk6MQZDZD';
  static Map<String, String> headers = {};
}

/// End instagram and facebook Group Code

/// Start BingWebSearch Group Code

class BingWebSearchGroup {}

/// End BingWebSearch Group Code

class StorageCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'storage',
      apiUrl: 'https://lpansigjhqgrkxpgwsjg.supabase.co/object/media/uploads',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxwYW5zaWdqaHFncmt4cGd3c2pnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODk5ODk1MjYsImV4cCI6MjAwNTU2NTUyNn0.g0GJjmg99XrT2TL45OoUdGRtbS7ogk5UzyTznQDf84M',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxwYW5zaWdqaHFncmt4cGd3c2pnIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4OTk4OTUyNywiZXhwIjoyMDA1NTY1NTI3fQ.INUMOPj0gKxSjEr2zntyM5CSCc2CWAiwYq8Lzj_C1R4',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class YTlikesAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'YTlikesAPI',
      apiUrl:
          'https://www.googleapis.com/youtube/v3/videos?part=statistics&id=iZQOrsqTE30&key=AIzaSyCCWp7vxlIavueaFjVM1-VWIy-JeM0rdM0',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? view(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].statistics.viewCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? like(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].statistics.likeCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fave(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].statistics.favoriteCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? comment(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].statistics.commentCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class InstaAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'insta API',
      apiUrl:
          'https://api.instagram.com/oauth/authorize?client_id=3470296316618709&redirect_uri=https://app.flutterflow.io/debug/keEGIqnX7ThfQvBcdbMG&scope=user_profile,user_media&response_type=code',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TwitchOauthorizCall {
  static Future<ApiCallResponse> call({
    String? redirectUri =
        'https://app.flutterflow.io/debug/AlsQU3ycFfZoJSRng247',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Twitch oauthoriz',
      apiUrl:
          'https://id.twitch.tv/oauth2/authorize?response_type=code&client_id=haofs9ryxv0a5clviifkgtu5zoo1vn&redirect_uri=https://app.flutterflow.io/debug/keEGIqnX7ThfQvBcdbMG&scope=channel%3Amanage%3Apolls+channel%3Aread%3Apolls',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'redirect_uri': "https://app.flutterflow.io/debug/AlsQU3ycFfZoJSRng247",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TwitchTokenPostCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Twitch token post',
      apiUrl:
          'https://id.twitch.tv/oauth2/token?client_id=haofs9ryxv0a5clviifkgtu5zoo1vn&client_secret=lgl421qex475fvir3i4bs8f5m7in14&code=ty3x5crl8nr2usn1hi6xu7e54dwa4i&grant_type=authorization_code&redirect_uri=https://app.flutterflow.io/debug/keEGIqnX7ThfQvBcdbMG',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TwitchFollowCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Twitch follow',
      apiUrl:
          'https://api.twitch.tv/helix/channels/followers?broadcaster_id=143372995',
      callType: ApiCallType.GET,
      headers: {
        'Client-Id': 'haofs9ryxv0a5clviifkgtu5zoo1vn',
        'Authorization': 'Bearer 0sssn4vtkq6hcg3qq8iwg6flqkuhot',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? followers(dynamic response) => (getJsonField(
        response,
        r'''$.total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class FBOauthCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'FB oauth',
      apiUrl:
          'https://graph.facebook.com/oauth/access_token?client_id=3470296316618709&client_secret=ab5a7547d5aca5674436b775ff0446f6&grant_type=authorization_code',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FBLikesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'FB likes',
      apiUrl:
          'https://graph.facebook.com/{object-id}?fields=likes.summary(true)&access_token={access-token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestFBAuthCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test FB auth',
      apiUrl:
          'https://www.facebook.com/v12.0/dialog/oauth?client_id=3470296316618709&redirect_uri=https://app.flutterflow.io/debug/keEGIqnX7ThfQvBcdbMG&response_type=code',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstagramPostLikesCallCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'InstagramPostLikesCall',
      apiUrl:
          'https://graph.instagram.com/\$mediaId?fields=id,media_type,media_url,username,timestamp,like_count&access_token=3470296316618709',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstagramOauthCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'instagram oauth',
      apiUrl:
          'https://www.facebook.com/v18.0/dialog/oauth?client_id=3470296316618709&redirect_uri=https://app.flutterflow.io/debug/w8fHVeh7nERGEY8XXwUX&state=',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
