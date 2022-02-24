import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:dynamiccard/dynamic_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  CardTwo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 128,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 256,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/card_bg.png',
                          fit: BoxFit.cover,
                          height: 256,
                          width: 96,
                        ),
                      ),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('assets/images/path.png',
                                  width: 32, height: 32))),
                      Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Image.asset('assets/images/glovo_logo.jpg',
                              width: 128, height: 32, fit: BoxFit.fill),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 8, 8, 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/dummy_avatar.png',
                                              width: 96,
                                              height: 96,
                                              fit: BoxFit.fill,
                                            )),
                                        Positioned.fill(
                                            child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                    'assets/images/crown.png',
                                                    width: 30,
                                                    height: 30))),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('John Doe',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(
                                                    64, 64, 64, 1))),
                                        Text('Ui Designer',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: Color.fromRGBO(
                                                    178, 178, 178, 1))),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'john@company.com',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: Color.fromRGBO(
                                                  178, 178, 178, 1)),
                                        ),
                                        Text(
                                          '+(91) 1234567890',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                RotatedBox(
                                  quarterTurns: -1,
                                  child: Text('56 Connects'),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
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
                                width: 16,
                              ),
                              Image.asset(
                                'assets/images/share.png',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Image.asset(
                                'assets/images/more.png',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
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
    return await DefaultAssetBundle.of(context).loadString("assets/data.json");
  }

  Future<String> getData1(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString("assets/data1.json");
  }

  Future<String> getData2(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString("assets/data2.json");
  }
}
