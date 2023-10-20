import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registration_widget.dart' show RegistrationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationModel extends FlutterFlowModel<RegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for login widget.
  FocusNode? loginFocusNode1;
  TextEditingController? loginController1;
  String? Function(BuildContext, String?)? loginController1Validator;
  // State field(s) for login widget.
  FocusNode? loginFocusNode2;
  TextEditingController? loginController2;
  String? Function(BuildContext, String?)? loginController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for repassword widget.
  FocusNode? repasswordFocusNode;
  TextEditingController? repasswordController;
  late bool repasswordVisibility;
  String? Function(BuildContext, String?)? repasswordControllerValidator;
  // Stores action output result for [Backend Call - API (ADD)] action in RegisterButton widget.
  ApiCallResponse? apiResult9h4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    repasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();

    loginFocusNode1?.dispose();
    loginController1?.dispose();

    loginFocusNode2?.dispose();
    loginController2?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    repasswordFocusNode?.dispose();
    repasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
