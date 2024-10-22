// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DTproductStruct extends FFFirebaseStruct {
  DTproductStruct({
    int? id,
    String? title,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _title = title,
        _price = price,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static DTproductStruct fromMap(Map<String, dynamic> data) => DTproductStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        price: castToType<double>(data['price']),
      );

  static DTproductStruct? maybeFromMap(dynamic data) => data is Map
      ? DTproductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static DTproductStruct fromSerializableMap(Map<String, dynamic> data) =>
      DTproductStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DTproductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DTproductStruct &&
        id == other.id &&
        title == other.title &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([id, title, price]);
}

DTproductStruct createDTproductStruct({
  int? id,
  String? title,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DTproductStruct(
      id: id,
      title: title,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DTproductStruct? updateDTproductStruct(
  DTproductStruct? dTproduct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dTproduct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDTproductStructData(
  Map<String, dynamic> firestoreData,
  DTproductStruct? dTproduct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dTproduct == null) {
    return;
  }
  if (dTproduct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dTproduct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dTproductData = getDTproductFirestoreData(dTproduct, forFieldValue);
  final nestedData = dTproductData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dTproduct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDTproductFirestoreData(
  DTproductStruct? dTproduct, [
  bool forFieldValue = false,
]) {
  if (dTproduct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dTproduct.toMap());

  // Add any Firestore field values
  dTproduct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDTproductListFirestoreData(
  List<DTproductStruct>? dTproducts,
) =>
    dTproducts?.map((e) => getDTproductFirestoreData(e, true)).toList() ?? [];
