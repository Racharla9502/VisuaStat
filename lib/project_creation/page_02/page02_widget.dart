import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project_creation/create_project_nav/create_project_nav_widget.dart';
import 'package:flutter/material.dart';
import 'page02_model.dart';
export 'page02_model.dart';

class Page02Widget extends StatefulWidget {
  const Page02Widget({
    super.key,
    this.projectdocref,
  });

  final DocumentReference? projectdocref;

  @override
  State<Page02Widget> createState() => _Page02WidgetState();
}

class _Page02WidgetState extends State<Page02Widget> {
  late Page02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page02Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: StreamBuilder<ProjectRecord>(
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

            final columnProjectRecord = snapshot.data!;

            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 125.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).secondary,
                        FlutterFlowTheme.of(context).primary
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(0.0, 1.0),
                      end: const AlignmentDirectional(0, -1.0),
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 85.0, 15.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          columnProjectRecord.projectName,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'id:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  columnProjectRecord.reference.id,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: wrapWithModel(
                    model: _model.createProjectNavModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CreateProjectNavWidget(
                      page: 'page_02',
                      projectdocref: widget.projectdocref,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Data Processing',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Data processing in business analysis involves cleaning, transforming, and organizing raw data to make it usable for analysis. This step includes handling missing values, correcting errors, and standardizing data formats. The goal is to prepare the data for meaningful insights, ensuring accuracy and reliability in decision-making.',
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Step1: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    TextSpan(
                                      text: 'Process the data',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResult5dt =
                                      await DataProcessingCall.call(
                                    filePathOrLink: columnProjectRecord.file,
                                  );

                                  if ((_model.apiResult5dt?.succeeded ??
                                      true)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Successfully processed',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF00FF52),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Failed',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFFFF0011),
                                      ),
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                text: 'Verify',
                                options: FFButtonOptions(
                                  height: 30.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Results:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 240.0,
                              decoration: const BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: GridView(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 1.0,
                                ),
                                scrollDirection: Axis.vertical,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              getJsonField(
                                                (_model.apiResult5dt
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.categorical_variables_converted''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResult5dt?.jsonBody ??
                                                  ''),
                                              r'''$.images.categorical_variables_converted''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResult5dt?.jsonBody ?? ''),
                                        r'''$.images.categorical_variables_converted''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResult5dt?.jsonBody ??
                                                ''),
                                            r'''$.images.categorical_variables_converted''',
                                          ).toString(),
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              getJsonField(
                                                (_model.apiResult5dt
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.duplicates_removed''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResult5dt?.jsonBody ??
                                                  ''),
                                              r'''$.images.duplicates_removed''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResult5dt?.jsonBody ?? ''),
                                        r'''$.images.duplicates_removed''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResult5dt?.jsonBody ??
                                                ''),
                                            r'''$.images.duplicates_removed''',
                                          ).toString(),
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              getJsonField(
                                                (_model.apiResult5dt
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.feature_scaling_applied''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResult5dt?.jsonBody ??
                                                  ''),
                                              r'''$.images.feature_scaling_applied''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResult5dt?.jsonBody ?? ''),
                                        r'''$.images.feature_scaling_applied''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResult5dt?.jsonBody ??
                                                ''),
                                            r'''$.images.feature_scaling_applied''',
                                          ).toString(),
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              getJsonField(
                                                (_model.apiResult5dt
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.missing_values_handled''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResult5dt?.jsonBody ??
                                                  ''),
                                              r'''$.images.missing_values_handled''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResult5dt?.jsonBody ?? ''),
                                        r'''$.images.missing_values_handled''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResult5dt?.jsonBody ??
                                                ''),
                                            r'''$.images.missing_values_handled''',
                                          ).toString(),
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              getJsonField(
                                                (_model.apiResult5dt
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.numerical_features_normalized''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResult5dt?.jsonBody ??
                                                  ''),
                                              r'''$.images.numerical_features_normalized''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResult5dt?.jsonBody ?? ''),
                                        r'''$.images.numerical_features_normalized''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResult5dt?.jsonBody ??
                                                ''),
                                            r'''$.images.numerical_features_normalized''',
                                          ).toString(),
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(height: 15.0)),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 1.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await DataProcessingRecord.createDoc(
                                      widget.projectdocref!)
                                  .set(createDataProcessingRecordData(
                                imagescategoricalVariablesConverted:
                                    getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.images.categorical_variables_converted''',
                                ).toString(),
                                imagesduplicatesRemoved: getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.images.duplicates_removed''',
                                ).toString(),
                                imagesfeatureScalingApplied: getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.images.feature_scaling_applied''',
                                ).toString(),
                                imagesmissingValuesHandled: getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.images.missing_values_handled''',
                                ).toString(),
                                imagesnumericalFeaturesNormalized: getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.images.numerical_features_normalized''',
                                ).toString(),
                                processData: getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.processed_data_url''',
                                ).toString(),
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Results saved data process doc',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );

                              await columnProjectRecord.reference
                                  .update(createProjectRecordData(
                                updatedFile: getJsonField(
                                  (_model.apiResult5dt?.jsonBody ?? ''),
                                  r'''$.processed_data_url''',
                                ).toString(),
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Results updated in project document',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              await Future.delayed(
                                  const Duration(milliseconds: 1000));

                              context.pushNamed(
                                'page_03',
                                queryParameters: {
                                  'projectdocref': serializeParam(
                                    widget.projectdocref,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: 'Save',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 25.0)),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
