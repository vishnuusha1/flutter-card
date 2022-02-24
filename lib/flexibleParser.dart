import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/widgets.dart';

import 'dart:ui';

class flexibleParser extends WidgetParser {
  @override
  String get widgetName => "Flexible";

  @override
  Type get widgetType => Flexible;

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as Flexible;
    return <String, dynamic>{
      "type": widgetName,
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext),
      "flex": realWidget.flex,
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    Map<String, dynamic>? childMap = map['child'];
    Widget? child = childMap == null
        ? null
        : DynamicWidgetBuilder.buildFromMap(childMap, buildContext, listener);
    var flexible = Flexible(
      child: child!,
      flex: map['flex'],
    );

    return flexible;
  }
}
