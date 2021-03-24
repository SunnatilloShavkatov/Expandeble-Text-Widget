import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget(
      {Key? key,
      this.text,
      this.title,
      this.margin,
      this.textStyle,
      this.backgroundColor,
      this.downIcon,
      this.upIcon,
      this.shape,
      this.imageChild,
      this.elevation})
      : assert(text != null && title != null),
        super(key: key);

  /// Text, should not be null
  final String? text;

  /// Style of text
  final TextStyle? textStyle;

  /// Typically a [Text] widget that contains a description of the current
  /// contents of the app.
  final Widget? title;

  /// Color of the default background widget
  final Color? backgroundColor;

  /// The z-coordinate at which to place this card. This controls the size of
  /// the shadow below the card.
  ///
  /// Defines the card's [Material.elevation].
  ///
  /// If this property is null then [CardTheme.elevation] of
  /// [ThemeData.cardTheme] is used. If that's null, the default value is 1.0.
  final double? elevation;

  /// The shape of the card's [Material].
  ///
  /// Defines the card's [Material.shape].
  ///
  /// is used. If that's null then the shape will be a [RoundedRectangleBorder]
  /// with a circular corner radius of 4.0.
  final ShapeBorder? shape;

  /// image widget
  final Widget? imageChild;

  /// down icon and widget
  final Widget? downIcon;

  /// up icon and widget
  final Widget? upIcon;

  ///
  final MainAxisAlignment alignmentBottomIcon = MainAxisAlignment.start;

  /// The empty space that surrounds the card.
  ///
  /// Defines the card's outer [Container.margin].
  ///
  /// If this property is null then [CardTheme.margin] of
  /// [ThemeData.cardTheme] is used. If that's null, the default margin is 4.0
  /// logical pixels on all sides: `EdgeInsets.all(4.0)`.
  final EdgeInsetsGeometry? margin;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableTextWidget> {
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backgroundColor,
      margin: widget.margin,
      elevation: widget.elevation,
      shape: widget.shape,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: widget.imageChild,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                widget.title!,
                Text(
                  widget.text!,
                  maxLines: descTextShowFlag ? 16 : 2,
                  textAlign: TextAlign.start,
                  style: widget.textStyle,
                ),
                Row(
                  mainAxisAlignment: widget.alignmentBottomIcon,
                  children: <Widget>[
                    if (descTextShowFlag)
                      InkWell(
                        child: widget.upIcon,
                        onTap: () {
                          setState(() => descTextShowFlag = !descTextShowFlag);
                        },
                      )
                    else
                      InkWell(
                        child: widget.downIcon,
                        onTap: () {
                          setState(() => descTextShowFlag = !descTextShowFlag);
                        },
                      )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
