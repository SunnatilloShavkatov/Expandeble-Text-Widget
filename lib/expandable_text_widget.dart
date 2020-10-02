library expandable_text_widget;

import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {

  const ExpandableTextWidget({
    Key key,
    this.text,
    this.title,
    this.textStyle,
    this.backgroundColor,
    this.downIcon,
    this.upIcon,
    this.shape,
    this.imageChild,
    this.elevation
  }): assert(text != null && title != null),
        super(key: key);

  final String text;
  final TextStyle textStyle;
  final Widget title;
  final Color backgroundColor;
  final double elevation;
  final ShapeBorder shape;
  final Widget imageChild;
  final Widget downIcon;
  final Widget upIcon;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableTextWidget> {
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      elevation: 2.0,
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
            margin: EdgeInsets.all(16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                widget.title,
                Text(
                  widget.text,
                  maxLines: descTextShowFlag ? 16 : 2,
                  textAlign: TextAlign.start,
                  style: widget.textStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    if (descTextShowFlag)
                      IconButton(
                        icon: widget.upIcon,
                        onPressed: () {
                          setState(() {
                            descTextShowFlag = !descTextShowFlag;
                          });
                        },
                      )
                    else
                      IconButton(
                        icon: widget.downIcon,
                        onPressed: () {
                          setState(() {
                            descTextShowFlag = !descTextShowFlag;
                          });
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