import 'dart:developer';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:dynamiccard/dynamic_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardFour extends StatelessWidget {
  CardFour({Key? key}) : super(key: key);
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
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 15,
                                    left: 20,
                                    child: Image.asset(
                                      'assets/images/glovo_logo.png',
                                      width: 90,
                                      height: 30,
                                      colorBlendMode: null,
                                      repeat: ImageRepeat.noRepeat,
                                      fit: BoxFit.contain,
                                      color: null,
                                    )),
                                Positioned(
                                  top: 70,
                                  left: 25,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/dummy_avatar.png',
                                        width: 110,
                                        height: 110,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Positioned(
                                    left: screenHeight / 6.3, //100,
                                    bottom: 75,
                                    child: Image.asset(
                                        'assets/images/crown.png',
                                        width: 30,
                                        height: 30)),
                                Positioned.fill(
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Image.asset(
                                            'assets/images/path.png',
                                            width: 39,
                                            height: 36))),
                                Positioned(
                                  right: 60,
                                  top: 50,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'John',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.red,
                                          ),
                                        ),
                                        Text('UI Designer',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xFF5b5b5b),
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
                                            color: Color(0xFF1c1c1c),
                                          ),
                                        ),
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
                                        color: Color(0xFF1c1c1c),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/fb.png',
                                                width: 45,
                                                height: 45,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/twitter.png',
                                                width: 45,
                                                height: 45,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/youtube.png',
                                                width: 45,
                                                height: 45,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/linkedin.png',
                                                width: 45,
                                                height: 45,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 35,
                                              ),
                                              Image.asset(
                                                'assets/images/qrcode.png',
                                                width: 24,
                                                height: 24,
                                                fit: BoxFit.contain,
                                              ),
                                              SizedBox(
                                                width: 20,
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
                                        ],
                                      ),
                                    )),
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
