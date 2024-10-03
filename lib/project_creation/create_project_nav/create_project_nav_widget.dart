import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'create_project_nav_model.dart';
export 'create_project_nav_model.dart';

class CreateProjectNavWidget extends StatefulWidget {
  const CreateProjectNavWidget({
    super.key,
    required this.page,
    this.projectdocref,
  });

  final String? page;
  final DocumentReference? projectdocref;

  @override
  State<CreateProjectNavWidget> createState() => _CreateProjectNavWidgetState();
}

class _CreateProjectNavWidgetState extends State<CreateProjectNavWidget> {
  late CreateProjectNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProjectNavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProjectRecord>(
      stream: ProjectRecord.getDocument(widget.projectdocref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }

        final rowProjectRecord = snapshot.data!;

        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_01' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_01'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_1,
                color: widget.page == 'page_01'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_01' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_01',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_02' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_02'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_2,
                color: widget.page == 'page_02'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_02' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_02',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_03' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_03'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_3,
                color: widget.page == 'page_03'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_03' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_03',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_04' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_04'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_4_sharp,
                color: widget.page == 'page_04'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_04' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_04',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_05' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_05'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_5,
                color: widget.page == 'page_05'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_05' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_05',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_06' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_06'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_6,
                color: widget.page == 'page_06'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_06' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_06',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_07' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_07'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_7_sharp,
                color: widget.page == 'page_07'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_07' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_07',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 26.0,
              buttonSize: widget.page == 'page_08' ? 40.0 : 32.0,
              fillColor: widget.page == 'page_08'
                  ? FlutterFlowTheme.of(context).secondary
                  : const Color(0x00000000),
              icon: Icon(
                Icons.filter_8,
                color: widget.page == 'page_08'
                    ? Colors.white
                    : FlutterFlowTheme.of(context).primary,
                size: widget.page == 'page_08' ? 24.0 : 16.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'page_08',
                  queryParameters: {
                    'projectdocref': serializeParam(
                      widget.projectdocref,
                      ParamType.DocumentReference,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
