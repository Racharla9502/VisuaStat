import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project_creation/create_project_nav/create_project_nav_widget.dart';
import 'page07_widget.dart' show Page07Widget;
import 'package:flutter/material.dart';

class Page07Model extends FlutterFlowModel<Page07Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for createProjectNav component.
  late CreateProjectNavModel createProjectNavModel;
  // Stores action output result for [Backend Call - API (ModelEvaluation)] action in Button widget.
  ApiCallResponse? apiResulteq9;

  @override
  void initState(BuildContext context) {
    createProjectNavModel = createModel(context, () => CreateProjectNavModel());
  }

  @override
  void dispose() {
    createProjectNavModel.dispose();
  }
}
