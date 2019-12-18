library flutter_item_widget;

import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class ItemWidget extends StatelessWidget {
  final num width;
  final num _height = 0;
  final int weightLeft;
  final int weightRight;
  final Alignment alignmentLeft;

  final Alignment alignmentRight;

  //view背景颜色
  final Color bgColor;

  //左边的widget
  final Widget widgetLeft;

  //右边的widget
  final Widget widgetRight;

  /// 左右分开的widget,默认分散对齐
  ItemWidget(
      {this.bgColor,
      @required this.widgetLeft,
      @required this.widgetRight,
      this.weightLeft = 1,
      this.weightRight = 1,
      this.width = double.infinity,
      this.alignmentLeft = Alignment.centerLeft,
      this.alignmentRight = Alignment.centerRight})
      : assert(widgetLeft != null),
        assert(widgetRight != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor ?? Theme.of(context).scaffoldBackgroundColor,
      width: width.toDouble(),
//      height: height.toDouble(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Align(
              child: widgetLeft,
              alignment: alignmentLeft,
            ),
            flex: weightLeft,
          ),
          Expanded(
            child: Align(
              child: widgetRight,
              alignment: alignmentRight,
            ),
            flex: weightRight,
          ),
        ],
      ),
    );
  }
}
