import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

enum ZIndex {
  top,
  bottom,
}

class DecoratedStack extends StatelessWidget {
  const DecoratedStack({
    Key key,
    this.padding,
    this.margin,
    this.decoration,
    this.width,
    this.height,
    this.textStyle,
    this.safeArea,
    this.onPressed,
    this.behavior = HitTestBehavior.opaque,
    this.overflow,
    this.constraints,
    this.expanded = false,
    this.stackFit,
    this.alignment,
    this.topStart,
    this.topEnd,
    this.bottomStart,
    this.bottomEnd,
    this.top,
    this.bottom,
    this.start,
    this.end,
    this.center,
    this.borderRadius,
    this.sliver = false,
    this.childrenZIndex = ZIndex.bottom,
    @required this.children,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BoxDecoration decoration;
  final BoxConstraints constraints;
  final double width;
  final double height;

  final TextStyle textStyle;

  final bool safeArea;

  final ContextCallback onPressed;
  final HitTestBehavior behavior;

  final bool expanded;

  final Widget topStart;
  final Widget topEnd;
  final Widget bottomStart;
  final Widget bottomEnd;
  final Widget top;
  final Widget bottom;
  final Widget start;
  final Widget end;
  final Widget center;

  final StackFit stackFit;
  final AlignmentGeometry alignment;
  final Overflow overflow;

  final BorderRadius borderRadius;

  final bool sliver;
  final ZIndex childrenZIndex;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Widget result = Stack(
      alignment: alignment ?? AlignmentDirectional.topStart,
      fit: stackFit ?? StackFit.loose,
      overflow: overflow ?? Overflow.clip,
      children: <Widget>[
        if (childrenZIndex == ZIndex.bottom) ...children,
        if (topStart != null) Positioned(top: 0, left: 0, child: topStart),
        if (topEnd != null) Positioned(top: 0, right: 0, child: topEnd),
        if (bottomStart != null)
          Positioned(bottom: 0, left: 0, child: bottomStart),
        if (bottomEnd != null)
          Positioned(bottom: 0, right: 0, child: bottomEnd),
        if (top != null) Positioned(top: 0, left: 0, right: 0, child: top),
        if (bottom != null)
          Positioned(bottom: 0, right: 0, left: 0, child: bottom),
        if (start != null) Positioned(bottom: 0, top: 0, left: 0, child: start),
        if (end != null) Positioned(bottom: 0, top: 0, right: 0, child: end),
        if (center != null)
          Positioned(bottom: 0, right: 0, top: 0, left: 0, child: center),
        if (childrenZIndex == ZIndex.top) ...children,
      ],
    );

    if (safeArea != null) {
      result = SafeArea(child: result);
    }

    if (textStyle != null) {
      result = DefaultTextStyle(style: textStyle, child: result);
    }

    if (borderRadius != null) {
      result = ClipRRect(borderRadius: borderRadius, child: result);
    }

    if (decoration != null ||
        padding != null ||
        margin != null ||
        width != null ||
        height != null ||
        constraints != null) {
      result = Container(
        margin: margin,
        padding: padding,
        width: width,
        height: height,
        decoration: decoration,
        constraints: constraints,
        child: result,
      );
    }

    if (onPressed != null) {
      result = GestureDetector(
        behavior: behavior ?? HitTestBehavior.deferToChild,
        onTap: () => onPressed(context),
        child: result,
      );
    }

    if (expanded) {
      result = Expanded(child: result);
    }

    if (sliver) {
      result = SliverToBoxAdapter(child: result);
    }
    return result;
  }
}
