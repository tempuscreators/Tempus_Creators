// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductVideoStruct extends FFFirebaseStruct {
  ProductVideoStruct({
    String? title,
    String? videoUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _videoUrl = videoUrl,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  set videoUrl(String? val) => _videoUrl = val;
  bool hasVideoUrl() => _videoUrl != null;

  static ProductVideoStruct fromMap(Map<String, dynamic> data) =>
      ProductVideoStruct(
        title: data['title'] as String?,
        videoUrl: data['video_url'] as String?,
      );

  static ProductVideoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductVideoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'video_url': _videoUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'video_url': serializeParam(
          _videoUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductVideoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductVideoStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        videoUrl: deserializeParam(
          data['video_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductVideoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductVideoStruct &&
        title == other.title &&
        videoUrl == other.videoUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([title, videoUrl]);
}

ProductVideoStruct createProductVideoStruct({
  String? title,
  String? videoUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductVideoStruct(
      title: title,
      videoUrl: videoUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductVideoStruct? updateProductVideoStruct(
  ProductVideoStruct? productVideo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productVideo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductVideoStructData(
  Map<String, dynamic> firestoreData,
  ProductVideoStruct? productVideo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productVideo == null) {
    return;
  }
  if (productVideo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productVideo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productVideoData =
      getProductVideoFirestoreData(productVideo, forFieldValue);
  final nestedData =
      productVideoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productVideo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductVideoFirestoreData(
  ProductVideoStruct? productVideo, [
  bool forFieldValue = false,
]) {
  if (productVideo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productVideo.toMap());

  // Add any Firestore field values
  productVideo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductVideoListFirestoreData(
  List<ProductVideoStruct>? productVideos,
) =>
    productVideos?.map((e) => getProductVideoFirestoreData(e, true)).toList() ??
    [];
