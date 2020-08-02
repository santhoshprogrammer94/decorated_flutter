import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void PressedCallback(BuildContext context);

class DecoratedRow extends StatelessWidget {
  const DecoratedRow({
    Key key,
    this.padding,
    this.margin,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
    this.transform,
    this.width,
    this.height,
    this.alignment,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textBaseline,
    this.onPressed,
    this.onLongPressed,
    this.behavior = HitTestBehavior.opaque,
    this.itemSpacing = 0,
    this.divider,
    this.visible = true,
    this.expanded = false,
    this.forceItemSameExtent = false,
    this.elevation,
    this.material = false,
    this.children,
    this.safeArea,
    this.textStyle,
    this.repaintBoundaryKey,
    this.widthFactor,
  }) : super(key: key);

  //region Container
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final Decoration decoration;
  final Decoration foregroundDecoration;
  final BoxConstraints constraints;
  final Matrix4 transform;
  final double width;
  final double height;

  //endregion

  //region Row
  final AlignmentGeometry alignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextBaseline textBaseline;

  //endregion

  //region GestureDetector
  final PressedCallback onPressed;
  final PressedCallback onLongPressed;
  final HitTestBehavior behavior;

  //endregion

  //region Material
  final bool material;
  final double elevation;

  //endregion

  //region FractionallySizedBox
  final double widthFactor;

  //endregion

  /// item间距
  final double itemSpacing;

  /// 分隔控件 与[itemSpacing]功能类似, 但是优先使用[divider]
  final Widget divider;

  /// 是否可见
  final bool visible;

  /// 垂直方向上Expand
  final bool expanded;

  /// 强制子widget拥有相同的宽度, 会获取到屏幕宽度然后除以item个数来计算
  final bool forceItemSameExtent;

  /// 内部统一的TextStyle
  final TextStyle textStyle;

  /// 是否安全区域
  final bool safeArea;

  /// 是否需要[RepaintBoundary]
  final GlobalKey repaintBoundaryKey;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedFlex(
      direction: Axis.horizontal,
      padding: padding,
      margin: margin,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      transform: transform,
      width: width,
      height: height,
      alignment: alignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textBaseline: textBaseline,
      onPressed: onPressed,
      onLongPressed: onLongPressed,
      behavior: behavior,
      itemSpacing: itemSpacing,
      visible: visible,
      expanded: expanded,
      forceItemSameExtent: forceItemSameExtent,
      safeArea: safeArea,
      divider: divider,
      elevation: elevation,
      material: material,
      widthFactor: widthFactor,
      textStyle: textStyle,
      repaintBoundaryKey: repaintBoundaryKey,
      children: children,
    );
  }
}

class DecoratedColumn extends StatelessWidget {
  const DecoratedColumn({
    Key key,
    this.padding,
    this.margin,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
    this.transform,
    this.width,
    this.height,
    this.alignment,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textBaseline,
    this.onPressed,
    this.onLongPressed,
    this.behavior = HitTestBehavior.opaque,
    this.itemSpacing = 0,
    this.divider,
    this.visible = true,
    this.expanded = false,
    this.scrollable = false,
    this.forceItemSameExtent = false,
    this.safeArea,
    this.elevation,
    this.material = false,
    this.withLocalNavigator = false,
    this.heightFactor,
    this.textStyle,
    this.repaintBoundaryKey,
    this.children,
  }) : super(key: key);

  //region Container
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final Decoration decoration;
  final Decoration foregroundDecoration;
  final BoxConstraints constraints;
  final Matrix4 transform;
  final double width;
  final double height;

  //endregion

  //region Row
  final AlignmentGeometry alignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextBaseline textBaseline;

  //endregion

  //region GestureDetector
  final PressedCallback onPressed;
  final PressedCallback onLongPressed;
  final HitTestBehavior behavior;

  //endregion

  //region Material
  final bool material;
  final double elevation;

  //endregion

  //region FractionallySizedBox
  final double heightFactor;

  //endregion

  final double itemSpacing;

  /// 分隔控件 与[itemSpacing]功能类似, 但是优先使用[divider]
  final Widget divider;
  final bool visible;
  final bool expanded;
  final bool scrollable;

  /// 强制子widget拥有相同的高度, 会获取到屏幕高度然后除以item个数来计算
  final bool forceItemSameExtent;

  /// 是否安全区域
  final bool safeArea;
  final bool withLocalNavigator;

  /// 内部统一的TextStyle
  final TextStyle textStyle;

  /// 是否需要[RepaintBoundary]
  final GlobalKey repaintBoundaryKey;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Widget result = DecoratedFlex(
      direction: Axis.vertical,
      padding: padding,
      margin: margin,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      transform: transform,
      width: width,
      height: height,
      alignment: alignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textBaseline: textBaseline,
      onPressed: onPressed,
      onLongPressed: onLongPressed,
      behavior: behavior,
      itemSpacing: itemSpacing,
      visible: visible,
      expanded: expanded,
      forceItemSameExtent: forceItemSameExtent,
      safeArea: safeArea,
      elevation: elevation,
      material: material,
      divider: divider,
      withLocalNavigator: withLocalNavigator,
      heightFactor: heightFactor,
      textStyle: textStyle,
      repaintBoundaryKey: repaintBoundaryKey,
      children: children,
    );

    if (scrollable) {
      result = SingleChildScrollView(child: result);
    }

    return result;
  }
}

class DecoratedFlex extends StatelessWidget {
  DecoratedFlex({
    Key key,
    this.padding,
    this.margin,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
    this.transform,
    this.width,
    this.height,
    @required this.direction,
    this.alignment,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textBaseline,
    this.onPressed,
    this.onLongPressed,
    this.behavior = HitTestBehavior.opaque,
    this.itemSpacing = 0,
    this.divider,
    this.visible = true,
    this.expanded = false,
    this.forceItemSameExtent = false,
    this.elevation,
    this.safeArea,
    this.withLocalNavigator = false,
    this.widthFactor,
    this.heightFactor,
    this.material = false,
    this.textStyle,
    this.repaintBoundaryKey,
    this.children,
  }) : super(key: key);

  //region Container
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
  final Decoration decoration;
  final Decoration foregroundDecoration;
  final BoxConstraints constraints;
  final Matrix4 transform;
  final double width;
  final double height;

  //endregion

  //region Flex
  final Axis direction;
  final AlignmentGeometry alignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextBaseline textBaseline;

  //endregion

  //region GestureDetector
  final PressedCallback onPressed;
  final PressedCallback onLongPressed;
  final HitTestBehavior behavior;

  //endregion

  //region Material
  final bool material;
  final double elevation;

  //endregion

  //region FractionallySizedBox
  final double widthFactor;
  final double heightFactor;

  //endregion

  /// 元素间距
  final double itemSpacing;

  /// 分隔控件 与[itemSpacing]功能类似, 但是优先使用[divider]
  final Widget divider;

  /// 是否可见
  final bool visible;

  /// 是否展开
  final bool expanded;

  /// 是否强制子控件等长
  final bool forceItemSameExtent;

  /// 是否安全区域
  final bool safeArea;

  /// 是否带有局部Navigator 简单来说就是要不要用[CupertinoTabView]包裹
  final bool withLocalNavigator;

  /// 内部统一的TextStyle
  final TextStyle textStyle;

  /// 是否需要[RepaintBoundary]
  final GlobalKey repaintBoundaryKey;

  /// 子元素
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = children;

    if (forceItemSameExtent) {
      _children = children.map((it) {
        switch (direction) {
          case Axis.horizontal:
            return SizedBox(
              width: MediaQuery.of(context).size.width / children.length,
              child: it,
            );
          case Axis.vertical:
            return SizedBox(
              height: MediaQuery.of(context).size.height / children.length,
              child: it,
            );
          default:
            return null;
        }
      }).toList();
    }

    Widget result = Flex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textBaseline: textBaseline,
      children: itemSpacing != 0 || divider != null
          ? addItemDivider(_children, itemSpacing, divider)
          : _children,
    );

    if (padding != null ||
        margin != null ||
        width != null ||
        height != null ||
        color != null ||
        decoration != null ||
        foregroundDecoration != null ||
        constraints != null ||
        transform != null ||
        alignment != null) {
      result = Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        color: color,
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        constraints: constraints,
        transform: transform,
        alignment: alignment,
        child: result,
      );
    }

    if (behavior != null || onPressed != null || onLongPressed != null) {
      result = GestureDetector(
        behavior: behavior == null ?? result != null
            ? HitTestBehavior.deferToChild
            : HitTestBehavior.translucent,
        onTap: onPressed != null ? () => onPressed(context) : null,
        onLongPress:
            onLongPressed != null ? () => onLongPressed(context) : null,
        child: result,
      );
    }

    if (material || elevation != null) {
      result = Material(
        elevation: elevation ?? 0,
        color: color,
        child: result,
      );
    }

    if (safeArea != null) {
      result = SafeArea(child: result);
    }

    if (widthFactor != null || heightFactor != null) {
      result = FractionallySizedBox(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: result,
      );
    }

    if (textStyle != null) {
      result = DefaultTextStyle(style: textStyle, child: result);
    }

    if (repaintBoundaryKey != null) {
      result = RepaintBoundary(key: repaintBoundaryKey, child: result);
    }

    if (expanded) {
      result = Expanded(child: result);
    }

    if (withLocalNavigator) {
      return CupertinoTabView(builder: (context) => result);
    } else {
      result = Visibility(visible: visible, child: result);
    }
    return result;
  }

  List<Widget> addItemDivider(
    List<Widget> children,
    double itemSpacing,
    Widget divider,
  ) {
    assert(children != null);

    // 确认要往哪几个index(以最终的插入后的List为参考系)插空间
    int currentLength = children.length;
    if (currentLength > 1) {
      final indexes = <int>[];
      // `currentLength + (currentLength - 1)`是插入后的长度
      // 这里的循环是在纸上画过得出的结论
      for (int i = 1; i < currentLength + (currentLength - 1); i += 2) {
        indexes.add(i);
      }

      if (direction == Axis.horizontal) {
        indexes.forEach((index) {
          children.insert(index, divider ?? SizedBox(width: itemSpacing));
        });
      } else if (direction == Axis.vertical) {
        indexes.forEach((index) {
          children.insert(index, divider ?? SizedBox(height: itemSpacing));
        });
      }
    }

    return children;
  }
}
