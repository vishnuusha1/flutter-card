import 'dart:developer';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:dynamiccard/dynamic_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardThree extends StatelessWidget {
  CardThree({Key? key}) : super(key: key);
  GlobalKey key1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

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
                          Container(
                            color: Color(0xff2e2e2e),
                            child: Stack(
                              children: [
                                Positioned(
                                  child:
                                      Image.asset('assets/images/profile.png',
                                          width: screenWidth / 2.9,
                                          height: screenHeight / 5.5, //120,
                                          fit: BoxFit.fill),
                                ),
                                Positioned(
                                    left: screenHeight / 7, //100,
                                    top: 95,
                                    child: Image.asset(
                                        'assets/images/crown.png',
                                        width: 30,
                                        height: 30)),
                                Positioned(
                                  left: 5,
                                  child: Image.asset(
                                      'assets/images/vector-bg.png',
                                      width: 348,
                                      height: 270,
                                      fit: BoxFit.fill),
                                ),
                                Positioned.fill(
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Image.asset(
                                            'assets/images/path.png',
                                            width: 39,
                                            height: 36))),
                                Positioned(
                                  right: 40,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'John Doe',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text('UI Designer',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF5b5b5b),
                                            )),
                                        SizedBox(height: 20),
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
                                        SizedBox(height: 10),
                                      ],
                                    ),
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
                                        color: Color(0xFF5b5b5b),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 60,
                                    left: 10,
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'test@example.com',
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
                                              Text(
                                                '+91 9011223344',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                ',',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '+91 9011223344',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    bottom: 5,
                                    left: 10,
                                    child: Container(
                                        padding: EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                            SizedBox(
                                              width: 124,
                                            ),
                                            Image.asset(
                                              'assets/images/qrcode.png',
                                              width: 24,
                                              height: 24,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Image.asset(
                                              'assets/images/share.png',
                                              width: 24,
                                              height: 24,
                                              fit: BoxFit.contain,
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Image.asset(
                                              'assets/images/more.png',
                                              width: 24,
                                              height: 24,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        )))
                              ],
                            ),
                          )
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
