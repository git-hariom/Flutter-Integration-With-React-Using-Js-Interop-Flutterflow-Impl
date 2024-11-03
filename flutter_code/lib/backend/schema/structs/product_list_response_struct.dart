// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductListResponseStruct extends BaseStruct {
  ProductListResponseStruct({
    String? resCode,
    String? resMsg,
    List<ProductStruct>? productList,
  })  : _resCode = resCode,
        _resMsg = resMsg,
        _productList = productList;

  // "resCode" field.
  String? _resCode;
  String get resCode => _resCode ?? '';
  set resCode(String? val) => _resCode = val;

  bool hasResCode() => _resCode != null;

  // "resMsg" field.
  String? _resMsg;
  String get resMsg => _resMsg ?? '';
  set resMsg(String? val) => _resMsg = val;

  bool hasResMsg() => _resMsg != null;

  // "productList" field.
  List<ProductStruct>? _productList;
  List<ProductStruct> get productList => _productList ?? const [];
  set productList(List<ProductStruct>? val) => _productList = val;

  void updateProductList(Function(List<ProductStruct>) updateFn) {
    updateFn(_productList ??= []);
  }

  bool hasProductList() => _productList != null;

  static ProductListResponseStruct fromMap(Map<String, dynamic> data) =>
      ProductListResponseStruct(
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
        productList: getStructList(
          data['productList'],
          ProductStruct.fromMap,
        ),
      );

  static ProductListResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductListResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'resCode': _resCode,
        'resMsg': _resMsg,
        'productList': _productList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'resCode': serializeParam(
          _resCode,
          ParamType.String,
        ),
        'resMsg': serializeParam(
          _resMsg,
          ParamType.String,
        ),
        'productList': serializeParam(
          _productList,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProductListResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductListResponseStruct(
        resCode: deserializeParam(
          data['resCode'],
          ParamType.String,
          false,
        ),
        resMsg: deserializeParam(
          data['resMsg'],
          ParamType.String,
          false,
        ),
        productList: deserializeStructParam<ProductStruct>(
          data['productList'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductListResponseStruct &&
        resCode == other.resCode &&
        resMsg == other.resMsg &&
        listEquality.equals(productList, other.productList);
  }

  @override
  int get hashCode => const ListEquality().hash([resCode, resMsg, productList]);
}

ProductListResponseStruct createProductListResponseStruct({
  String? resCode,
  String? resMsg,
}) =>
    ProductListResponseStruct(
      resCode: resCode,
      resMsg: resMsg,
    );
