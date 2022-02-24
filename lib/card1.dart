import 'dart:developer';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:dynamiccard/dynamic_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  Card1({Key? key}) : super(key: key);
  GlobalKey key1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              child: DynamicWidgetJsonExportor(
                key: key1,
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: new BoxConstraints(minHeight: 256.0),
                      //Card container

                      child: IntrinsicHeight(
                        //color: Colors.yellow,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 35,
                              child: Container(
                                color: Colors.yellow,
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Image.asset(
                                            'assets/images/profile.png',
                                            fit: BoxFit.cover)),
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/shape.png',
                                          fit: BoxFit.cover),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                                flex: 65,
                                child: Stack(
                                  children: [
                                    Container(
                                      color: Colors.yellow,
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 0, 20),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 40),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Vaishak R',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black)),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                      'Chief marketing officer',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.black)),
                                                  SizedBox(
                                                    height: 14,
                                                  ),
                                                  Text(
                                                    'vaishak',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                    '+(91) 1234567890',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  'assets/images/fb.png',
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/twitter.png',
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/youtube.png',
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/linkedin.png',
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Image.asset(
                                                  'assets/images/glovo_logo.png',
                                                  width: 60,
                                                  height: 30,
                                                  colorBlendMode: null,
                                                  repeat: ImageRepeat.noRepeat,
                                                  fit: BoxFit.contain,
                                                  color: null,
                                                ),
                                                Image.asset(
                                                  'assets/images/qrcode.png',
                                                  width: 24,
                                                  height: 24,
                                                  fit: BoxFit.contain,
                                                ),
                                                Image.asset(
                                                  'assets/images/share.png',
                                                  width: 24,
                                                  height: 24,
                                                  fit: BoxFit.contain,
                                                ),
                                                Image.asset(
                                                  'assets/images/more.png',
                                                  width: 24,
                                                  height: 24,
                                                  fit: BoxFit.contain,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Image.asset(
                                                'assets/images/path.png',
                                                width: 39,
                                                height: 36))),
                                    Positioned(
                                      top: 50,
                                      right: 10,
                                      child: RotatedBox(
                                        quarterTurns: -1,
                                        child: Text(
                                          '56 Connects',
                                          style: TextStyle(
                                            color: Color(0xFFFF7240),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                child: Text("Template One"),
                onPressed: () async {
                  var exportJsonString = await getData(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DynamicCard(exportJsonString)),
                  );
                }),
            ElevatedButton(
                child: Text("Template Two"),
                onPressed: () async {
                  var exportJsonString = await getData1(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DynamicCard(exportJsonString)),
                  );
                }),
            ElevatedButton(
                child: Text("Template Three"),
                onPressed: () async {
                  var exportJsonString = await getData2(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DynamicCard(exportJsonString)),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Future<String> getData(BuildContext context) async {
    var exportor = key1?.currentWidget as DynamicWidgetJsonExportor;
    var exportJsonString = exportor.exportJsonString();
    log(exportJsonString);
    return await DefaultAssetBundle.of(context).loadString("assets/data.json");
  }

  Future<String> getData1(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString("assets/data1.json");
  }

  Future<String> getData2(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString("assets/data2.json");
  }
}
