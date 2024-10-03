import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/project_creation/create_project_nav/create_project_nav_widget.dart';
import 'page01_widget.dart' show Page01Widget;
import 'package:flutter/material.dart';

class Page01Model extends FlutterFlowModel<Page01Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for createProjectNav component.
  late CreateProjectNavModel createProjectNavModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (dataCollection)] action in Button widget.
  ApiCallResponse? apiResultsh3;

  @override
  void initState(BuildContext context) {
    createProjectNavModel = createModel(context, () => CreateProjectNavModel());
  }

  @override
  void dispose() {
    createProjectNavModel.dispose();
  }
}
