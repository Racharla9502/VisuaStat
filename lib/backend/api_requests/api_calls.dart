import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DataCollectionCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dataCollection',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/dataCollection',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? datatypes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.data_types_image''',
      ));
  static String? firstfewrows(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.first_few_rows_image''',
      ));
  static String? missingvalues(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.missing_values_image''',
      ));
  static String? shape(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.shape_image''',
      ));
  static String? summarystatistics(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.summary_statistics_image''',
      ));
}

class DataProcessingCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'dataProcessing',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/dataProcess',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? categoricalvariables(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.categorical_variables_converted''',
      ));
  static String? duplicates(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.duplicates_removed''',
      ));
  static String? featurescaling(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.feature_scaling_applied''',
      ));
  static String? missingvalues(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.missing_values_handled''',
      ));
  static String? numericalfeaturesnormalized(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.numerical_features_normalized''',
      ));
  static String? processeddata(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.processed_data_url''',
      ));
}

class ExploratoryDataAnalysisCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exploratoryDataAnalysis',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/exploratoryDataAnalysis',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? boxplot(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.boxplot''',
      ));
  static String? correlationmatrix(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.correlation_matrix''',
      ));
  static String? numericaldistribution(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.numerical_distribution''',
      ));
  static String? pairplot(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.pairplot''',
      ));
  static String? processeddataurl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.processed_data_url''',
      ));
}

class PreProcessingCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'preProcessing',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/dataPreProcessing',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? accuracy(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.classification_report.accuracy''',
      ));
  static String? classification(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.classification_report''',
      ));
  static String? confusionmatrix(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.confusion_matrix''',
      ));
  static String? dataview(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.data_view''',
      ));
  static String? processeddataurl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.processed_data_url''',
      ));
  static String? regressionreport(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.regression_report''',
      ));
}

class DataTransformationCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Data Transformation',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/dataTransformation',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? logtransformation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.log_transformation''',
      ));
  static String? normalization(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.normalization''',
      ));
  static String? pca(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.pca''',
      ));
  static String? sqrttransformation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.sqrt_transformation''',
      ));
  static String? standardization(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.standardization''',
      ));
  static String? processeddataurl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.processed_data_url''',
      ));
}

class ModelingCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Modeling',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/modeling',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? regressionmetricspie(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.regression_metrics_pie''',
      ));
  static String? clustersizespie(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.cluster_sizes_pie''',
      ));
  static String? clustering(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.clustering''',
      ));
  static String? mse(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.mse''',
      ));
  static String? r2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.images.r2''',
      ));
}

class ModelEvaluationCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ModelEvaluation',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/evaluate_model',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? confusionmatrix(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.confusion_matrix''',
      ));
  static String? metricsbarplot(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.metrics_barplot''',
      ));
  static String? performancemetrics(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.images.performance_metrics''',
      ));
}

class InterpretationCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'interpretation',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/Interpretation_and_Insights',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? correlationheatmap(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.insights_images.correlation_heatmap''',
      ));
  static String? summarystats(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.insights_images.summary_stats''',
      ));
}

class PredictionsCall {
  static Future<ApiCallResponse> call({
    String? filePathOrLink = '',
  }) async {
    final ffApiRequestBody = '''
{
  "file_path_or_link": "$filePathOrLink"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'predictions',
      apiUrl:
          'https://us-central1-visua-stat-2jjo9n.cloudfunctions.net/interpret_and_insight',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
