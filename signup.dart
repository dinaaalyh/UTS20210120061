import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'signup_model.dart';
export 'signup_model.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  late SignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 557,
              height: 842,
              decoration: BoxDecoration(
                color: Color(0xFF080120),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.03, -0.61),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/2-removebg-preview.png',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.2),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {},
                      child: GradientText(
                        'EN- News',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                            ),
                        colors: [Color(0xFF704EEE), Color(0xFF3DE3CF)],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.01, 0.63),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                      child: Text(
                        ' By using EN- You accept our team service and privacy policy',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Source Sans Pro',
                              color: FlutterFlowTheme.of(context).info,
                              fontWeight: FontWeight.w100,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.13),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 12,
                        height: 12,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10000),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.1, 0.13),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 13,
                        height: 13,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10000),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.1, 0.13),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 12,
                        height: 12,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).alternate,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10000),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.5),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '         SIGN UP WITH APPLE',
                      options: FFButtonOptions(
                        width: 300,
                        height: 45,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0x00FFFFFF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Source Sans Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).info,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.36),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '         SIGN UP WITH GOOGLE',
                      options: FFButtonOptions(
                        width: 300,
                        height: 45,
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).info,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Source Sans Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w600,
                            ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.53, 0.35),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'data:image/png;base64,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',
                        width: 21,
                        height: 28,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.47, 0.49),
                    child: FaIcon(
                      FontAwesomeIcons.apple,
                      color: FlutterFlowTheme.of(context).alternate,
                      size: 26,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.01, 0.03),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {},
                      child: Text(
                        'Know the world',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFFAA94FF),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.01, 0.77),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {},
                      child: Text(
                        'Already have an account? | Login',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Source Sans Pro',
                              color: FlutterFlowTheme.of(context).info,
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
