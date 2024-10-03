import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/project_creation/create_project_nav/create_project_nav_widget.dart';
import 'package:flutter/material.dart';
import 'page06_model.dart';
export 'page06_model.dart';

class Page06Widget extends StatefulWidget {
  const Page06Widget({
    super.key,
    this.projectdocref,
  });

  final DocumentReference? projectdocref;

  @override
  State<Page06Widget> createState() => _Page06WidgetState();
}

class _Page06WidgetState extends State<Page06Widget> {
  late Page06Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page06Model());

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
        body: FutureBuilder<ProjectRecord>(
          future: ProjectRecord.getDocumentOnce(widget.projectdocref!),
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
                      page: 'page_06',
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
                                'Modeling',
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
                                      'Modeling in business analysis involves creating mathematical or machine learning models to represent real-world processes or predict outcomes based on data. These models are trained on historical data to identify patterns, relationships, and trends. The goal of modeling is to generate actionable insights, support decision-making, and forecast future business performance.',
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
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Step 1:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' Start the process of modeling',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          fontSize: 13.0,
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
                            FFButtonWidget(
                              onPressed: () async {
                                _model.apiResulticw = await ModelingCall.call(
                                  filePathOrLink: columnProjectRecord
                                      .dataTransposeUpdatedfile,
                                );

                                if ((_model.apiResulticw?.succeeded ?? true)) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Successfully verified',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Failed',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).error,
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              },
                              text: 'Verify',
                              options: FFButtonOptions(
                                height: 40.0,
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
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
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
                                                (_model.apiResulticw
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.cluster_sizes_pie''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResulticw?.jsonBody ??
                                                  ''),
                                              r'''$.images.cluster_sizes_pie''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResulticw?.jsonBody ?? ''),
                                        r'''$.images.cluster_sizes_pie''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResulticw?.jsonBody ??
                                                ''),
                                            r'''$.images.cluster_sizes_pie''',
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
                                                (_model.apiResulticw
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.clustering''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResulticw?.jsonBody ??
                                                  ''),
                                              r'''$.images.clustering''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResulticw?.jsonBody ?? ''),
                                        r'''$.images.clustering''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResulticw?.jsonBody ??
                                                ''),
                                            r'''$.images.clustering''',
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
                                                (_model.apiResulticw
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.mse''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResulticw?.jsonBody ??
                                                  ''),
                                              r'''$.images.mse''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResulticw?.jsonBody ?? ''),
                                        r'''$.images.mse''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResulticw?.jsonBody ??
                                                ''),
                                            r'''$.images.mse''',
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
                                                (_model.apiResulticw
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.r2''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResulticw?.jsonBody ??
                                                  ''),
                                              r'''$.images.r2''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResulticw?.jsonBody ?? ''),
                                        r'''$.images.r2''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResulticw?.jsonBody ??
                                                ''),
                                            r'''$.images.r2''',
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
                                                (_model.apiResulticw
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.images.regression_metrics_pie''',
                                              ).toString(),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: getJsonField(
                                              (_model.apiResulticw?.jsonBody ??
                                                  ''),
                                              r'''$.images.regression_metrics_pie''',
                                            ).toString(),
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: getJsonField(
                                        (_model.apiResulticw?.jsonBody ?? ''),
                                        r'''$.images.regression_metrics_pie''',
                                      ).toString(),
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            (_model.apiResulticw?.jsonBody ??
                                                ''),
                                            r'''$.images.regression_metrics_pie''',
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
                              await ModellingRecord.createDoc(
                                      columnProjectRecord.reference)
                                  .set(createModellingRecordData(
                                imagesclusterSizesPie: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.cluster_sizes_pie''',
                                ).toString(),
                                imagesclustering: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.clustering''',
                                ).toString(),
                                imagesmse: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.mse''',
                                ).toString(),
                                imagesr2: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.r2''',
                                ).toString(),
                                imagesregressionMetricsPie: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.regression_metrics_pie''',
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

                              await widget.projectdocref!
                                  .update(createProjectRecordData(
                                imagesregressionMetricsPie: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.regression_metrics_pie''',
                                ).toString(),
                                imagesr2: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.r2''',
                                ).toString(),
                                imagesmse: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.mse''',
                                ).toString(),
                                imagesclustering: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.clustering''',
                                ).toString(),
                                imagesclusterSizesPie: getJsonField(
                                  (_model.apiResulticw?.jsonBody ?? ''),
                                  r'''$.images.cluster_sizes_pie''',
                                ).toString(),
                              ));
                              await Future.delayed(
                                  const Duration(milliseconds: 1000));

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
