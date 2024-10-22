import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for coffeeSizeOptions widget.
  FormFieldController<List<String>>? coffeeSizeOptionsValueController;
  String? get coffeeSizeOptionsValue =>
      coffeeSizeOptionsValueController?.value?.firstOrNull;
  set coffeeSizeOptionsValue(String? val) =>
      coffeeSizeOptionsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
