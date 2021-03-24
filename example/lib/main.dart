import 'package:expandable_text_widget/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable Text Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpandableDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExpandableDemo extends StatefulWidget {
  @override
  _ExpandableDemoState createState() => _ExpandableDemoState();
}

class _ExpandableDemoState extends State<ExpandableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Text Widget Demo"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ExpandableTextWidget(
                backgroundColor: Colors.white,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                title: Text(
                  "Sarlavha",
                  style: TextStyle(color: Colors.grey[800], fontSize: 24),
                ),
                imageChild: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.scaleDown,
                ),
                textStyle: TextStyle(color: Colors.black, fontSize: 16),
                text:
                    "The color can \n be set with the splashColor property. \nThe splash size is \ndependent on the size of the child widget passed in - which is constrained by the minRadius and maxRadius parameters.",
                downIcon: SvgPicture.asset(
                  "assets/down.svg",
                  fit: BoxFit.scaleDown,
                ),
                upIcon: SvgPicture.asset(
                  "assets/up.svg",
                  color: Colors.black,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ExpandableTextWidget(
                backgroundColor: Colors.white,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                title: Text(
                  "Sarlavha",
                  style: TextStyle(color: Colors.grey[800], fontSize: 24),
                ),
                textStyle: TextStyle(color: Colors.black, fontSize: 16),
                text:
                    "The color can \n be set with the splashColor property. \nThe splash size is \ndependent on the size of the child widget passed in - which is constrained by the minRadius and maxRadius parameters.",
                downIcon: Text("show"),
                upIcon: Text("hide"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
