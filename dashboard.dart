import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    _model.textController ??= TextEditingController();
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
              width: 674,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0.25),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: Image.asset(
                              'assets/images/f6qmb_p.png',
                            ).image,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.8, 0.4),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {},
                        child: Text(
                          'Hi, Dina Aaliyah!',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.25),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(110, 30, 0, 0),
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-0.1, 0),
                          child: FlutterFlowIconButton(
                            borderRadius: 20,
                            buttonSize: 45,
                            fillColor: Color(0xFF080120),
                            icon: Icon(
                              Icons.notifications,
                              color: FlutterFlowTheme.of(context).info,
                              size: 26,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 391,
              height: 127,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 45, 0, 0),
                child: Text(
                  'What do \nyou search for?',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Open Sans',
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: 393,
              height: 86,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    child: Container(
                      width: 308,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        controller: _model.textController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Search for news...',
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).info,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          suffixIcon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 426,
              height: 43,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 15, 0, 0),
                child: Text(
                  'Categories',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Open Sans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: 397,
              height: 69,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Container(
                      width: 105,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/uh9wu_O.jpg',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.3, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: GradientText(
                                  'Sport',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Source Sans Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  colors: [
                                    Color(0xFF080120),
                                    Color(0xFF704EEE)
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                    child: Container(
                      width: 105,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.3, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {},
                                  child: GradientText(
                                    'Politics',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Source Sans Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    colors: [
                                      Color(0xFF080120),
                                      Color(0xFF704EEE)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                    child: Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.3, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                child: GradientText(
                                  'Entertainment',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Source Sans Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  colors: [
                                    Color(0xFF080120),
                                    Color(0xFF704EEE)
                                  ],
                                  gradientDirection: GradientDirection.ltr,
                                  gradientType: GradientType.linear,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 426,
              height: 43,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25, 15, 0, 0),
                child: Text(
                  'Top daily',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Open Sans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: 407,
              height: 213,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                      child: Container(
                        width: 161,
                        height: 218,
                        decoration: BoxDecoration(),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.75, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 6, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                      width: 143,
                                      height: 121,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 7, 8, 0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Mengintip Peta Kekuatan Tunggal Bulu Tangkis Cina di Olimpiade Tokyo 2020',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFF1C0E4B),
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: ' en.com',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 10,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.65),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        118, 0, 0, 0),
                                    child: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 161,
                        height: 218,
                        decoration: BoxDecoration(),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.75, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 6, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                      width: 141,
                                      height: 121,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 7, 8, 0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Enhypen Comeback, MV ‘Bite Me’ Tembus 12 Juta Views dalam 24 Jam ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFF1C0E4B),
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextSpan(
                                          text: 'is pretty cool, huh?',
                                          style: TextStyle(
                                            fontSize: 11,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.65),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        118, 0, 0, 0),
                                    child: Icon(
                                      Icons.navigate_next,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 422,
              height: 122,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).info,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.15),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(22, 0, 22, 0),
                      child: Container(
                        width: 316,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xFF080120),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                              child: FlutterFlowIconButton(
                                borderRadius: 20,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.home_filled,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(35, 0, 35, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20,
                                buttonSize: 40,
                                icon: FaIcon(
                                  FontAwesomeIcons.compass,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 35, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.bookmark_sharp,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 25, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.person_outline_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ],
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
