import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/widgets.dart';

import 'dart:ui';

class IntrinsicHeightParser extends WidgetParser {
  @override
  String get widgetName => "IntrinsicHeight";

  @override
  Type get widgetType => IntrinsicHeight;

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as IntrinsicHeight;
    return <String, dynamic>{
      "type": widgetName,
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext)
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    var instrict = IntrinsicHeight(
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
    );

    return instrict;
  }
}
