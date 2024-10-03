import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project_creation/create_project_nav/create_project_nav_widget.dart';
import 'page04_widget.dart' show Page04Widget;
import 'package:flutter/material.dart';

class Page04Model extends FlutterFlowModel<Page04Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for createProjectNav component.
  late CreateProjectNavModel createProjectNavModel;
  // Stores action output result for [Backend Call - API (exploratoryDataAnalysis)] action in Button widget.
  ApiCallResponse? apiResulttx3;

  @override
  void initState(BuildContext context) {
    createProjectNavModel = createModel(context, () => CreateProjectNavModel());
  }

  @override
  void dispose() {
    createProjectNavModel.dispose();
  }
}
