import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'reading_model.dart';
export 'reading_model.dart';

class ReadingWidget extends StatefulWidget {
  const ReadingWidget({Key? key}) : super(key: key);

  @override
  _ReadingWidgetState createState() => _ReadingWidgetState();
}

class _ReadingWidgetState extends State<ReadingWidget> {
  late ReadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReadingModel());
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
              width: 364,
              height: 800,
              decoration: BoxDecoration(
                color: Color(0xFF080120),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0.55),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 420,
                      height: 290,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://www.notebookcheck.net/fileadmin/_processed_/c/3/csm_AKA8518_984be0479c.jpg',
                                width: 4000,
                                height: 290,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 1.53),
                            child: Container(
                              width: 428,
                              height: 105,
                              decoration: BoxDecoration(
                                color: Color(0xFF080120),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          26, 0, 0, 0),
                                      child: FlutterFlowIconButton(
                                        borderRadius: 20,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: FaIcon(
                                          FontAwesomeIcons.facebookSquare,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          26, 0, 0, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: FaIcon(
                                          FontAwesomeIcons.twitter,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          26, 0, 0, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: Icon(
                                          Icons.markunread_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          26, 0, 0, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: FaIcon(
                                          FontAwesomeIcons.share,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          26, 0, 0, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        icon: Icon(
                                          Icons.message_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          size: 15,
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
                          Align(
                            alignment: AlignmentDirectional(0, -0.74),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_backspace,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      242, 0, 20, 0),
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
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(26, 0, 26, 0),
                              child: Text(
                                'Apple MacBook Pro 14 2023 review:',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Merriweather',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 26,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0.25),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        26, 60, 0, 0),
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 8, 0, 0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {},
                                      child: Text(
                                        'Andreas Osthoff',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Source Sans Pro',
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.4),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        85, 8, 0, 0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {},
                                      child: Text(
                                        'Jan, 28 2023 | 15.45',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Source Sans Pro',
                                              fontSize: 12,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: 416,
                        height: 501,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(38),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(26, 26, 26, 0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'After the launch was postponed last fall, Apple has now finally presented the upgraded versions of the MacBook Pro models. At the heart of the new models are, of course, Apple\'s own M2 Pro and M2 Max SoCs, which are said to offer significantly more performance in terms of both the processor and the graphics card. At the same time, fast 6 GHz WLAN networks (Wi-Fi 6E) are now supported and, according to Apple, battery runtimes are better than before. The prices have also increased by around US\$150.\n\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF080120),
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text:
                                      'Our review device is the MacBook Pro 14 with the fast M2 Pro (12 CPU cores & 19 GPU cores), which is available with 16 GB of RAM and a 1 TB SSD from US\$2,499.00. Our model even has 32 GB of RAM and a 2 TB SSD installed, which is why the price here rises to US\$3,299.00. As Apple only introduced the basic design in the 2021 models, no changes to the case or the input devices have been made. For more information, we refer to our previous reviews:',
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
