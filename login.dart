import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
              width: 430,
              height: 832,
              decoration: BoxDecoration(
                color: Color(0xFF080120),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 399,
                    height: 555,
                    decoration: BoxDecoration(
                      color: Color(0xFF704EEE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.03, -0.4),
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
                          alignment: AlignmentDirectional(-0.06, 1.24),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.08, 1.09),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 5),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Get Started',
                                    options: FFButtonOptions(
                                      width: 245,
                                      height: 40,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: Color(0xFF1C0E4B),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                      elevation: 30,
                                      borderSide: BorderSide(
                                        width: 0,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.07, 0.55),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 245,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: Icon(
                                            Icons.alternate_email,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 17,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 8, 0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController1,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Username',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .textController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.07, 0.74),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 245,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 0, 0),
                                          child: Icon(
                                            Icons.lock_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 17,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 8, 0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController2,
                                              autofocus: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Password',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(10, 0, 0, 0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 68, 0, 0),
                                  child: GradientText(
                                    'EN- News',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Rubik',
                                          color: Color(0xFF080120),
                                          fontWeight: FontWeight.bold,
                                        ),
                                    colors: [
                                      Color(0xFF080120),
                                      Color(0xFF3DE3CF)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.01, 0.63),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(167, 37, 0, 0),
                      child: Text(
                        'Forget Password?',
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
                  Align(
                    alignment: AlignmentDirectional(0.01, 0.9),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {},
                        child: Text(
                          'Already have an account? | Sign Up',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Source Sans Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                  ),
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
