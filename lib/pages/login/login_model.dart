import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtusername widget.
  FocusNode? txtusernameFocusNode;
  TextEditingController? txtusernameTextController;
  String? Function(BuildContext, String?)? txtusernameTextControllerValidator;
  // State field(s) for txtpassword widget.
  FocusNode? txtpasswordFocusNode;
  TextEditingController? txtpasswordTextController;
  late bool txtpasswordVisibility;
  String? Function(BuildContext, String?)? txtpasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (OdooAuthentication)] action in btnlogin widget.
  ApiCallResponse? apiResultmdq;

  @override
  void initState(BuildContext context) {
    txtpasswordVisibility = false;
  }

  @override
  void dispose() {
    txtusernameFocusNode?.dispose();
    txtusernameTextController?.dispose();

    txtpasswordFocusNode?.dispose();
    txtpasswordTextController?.dispose();
  }
}
