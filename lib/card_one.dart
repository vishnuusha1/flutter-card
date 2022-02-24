import 'dart:developer';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:dynamiccard/dynamic_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  CardOne({Key? key}) : super(key: key);
  GlobalKey key1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 128,
            ),
            DynamicWidgetJsonExportor(
              key: key1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: SizedBox(
                      height: 256,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.white,
                                  child: SizedBox(
                                    height: 256,
                                    child: Column(children: [
                                      Image.asset('assets/images/profile.png',
                                          width: 128,
                                          height: 120,
                                          fit: BoxFit.fill),
                                      Image.asset(
                                        'assets/images/shape.png',
                                        width: 128,
                                        height: 135,
                                        fit: BoxFit.fill,
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Container(
                                  color: Colors.white,
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                          child: Align(
                                              alignment: Alignment.topRight,
                                              child: Image.asset(
                                                  'assets/images/path.png',
                                                  width: 39,
                                                  height: 36))),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 20, 15, 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'John Doe',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                color: Color(0xFFFFF),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text('UI Designer',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFFFB8C00),
                                                )),
                                            SizedBox(height: 20),
                                            Text(
                                              'test@example.com',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xFF5b5b5b),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '+91 9011223344',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xFF5b5b5b),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/images/fb.png',
                                                  width: 38,
                                                  height: 38,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/twitter.png',
                                                  width: 38,
                                                  height: 38,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/youtube.png',
                                                  width: 38,
                                                  height: 38,
                                                  fit: BoxFit.cover,
                                                ),
                                                Image.asset(
                                                  'assets/images/linkedin.png',
                                                  width: 38,
                                                  height: 38,
                                                  fit: BoxFit.cover,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              color: Colors.yellow,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/glovo_logo.png',
                                                    width: 60,
                                                    height: 30,
                                                    colorBlendMode: null,
                                                    repeat:
                                                        ImageRepeat.noRepeat,
                                                    fit: BoxFit.contain,
                                                    color: null,
                                                  ),
                                                  SizedBox(
                                                    width: 24,
                                                  ),
                                                  Image.asset(
                                                    'assets/images/qrcode.png',
                                                    width: 24,
                                                    height: 24,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    width: 24,
                                                  ),
                                                  Image.asset(
                                                    'assets/images/share.png',
                                                    width: 24,
                                                    height: 24,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Image.asset(
                                                    'assets/images/more.png',
                                                    width: 24,
                                                    height: 24,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 75,
                                        right: 20,
                                        child: RotatedBox(
                                          quarterTurns: -1,
                                          child: Text(
                                            '56 Connects',
                                            style: TextStyle(
                                              color: Color(0xFFFF7240),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
