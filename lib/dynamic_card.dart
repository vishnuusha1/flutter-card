import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
class DynamicCard extends StatelessWidget {
  String dynamicJson;
  DynamicCard(this.dynamicJson);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Card'),
      ),
      body: SafeArea(
        child: DynamicWidgetBuilder.build(dynamicJson,
            context, DefaultClickListener())??Text('No Card')
      ),
    );
  }
}

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String? event) {
    print("Receive click event: " + (event == null ? "" : event));
  }
}
