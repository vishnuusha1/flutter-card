import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/widgets.dart';

import 'dart:ui';

class ConstrainedBoxParser extends WidgetParser {
  @override
  String get widgetName => "ConstrainedBox";

  @override
  Type get widgetType => ConstrainedBox;

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as ConstrainedBox;
    return <String, dynamic>{
      "type": widgetName,
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext)
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    var constraintBox = ConstrainedBox(
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
      constraints: new BoxConstraints(minHeight: 256.0),
    );

    return constraintBox;
  }
}
