
Makes an interesting splash effect when tapping its child widget.  
  
## Getting Started  
  
To use this plugin, add `splash_tap` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).  
  
The color can be set with the **splashColor** property. The splash size is dependent on the size of the child widget passed in - which is constrained by the **minRadius** and **maxRadius** parameters.
  
### Example  
  
```import 'package:expandable_text_widget/expandable_text_widget.dart';
   import 'package:flutter/material.dart';
   
   void main() {
     runApp(MyApp());
   }
   
   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         title: 'Expandable Text Widget Demo',
         theme: ThemeData(
           primarySwatch: Colors.blue,
         ),
         home: ExpandableDemo(),
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
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
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
               downIcon: Image.asset(
                 "assets/down.png",
                 color: Colors.black,
                 fit: BoxFit.scaleDown,
               ),
               upIcon: Image.asset(
                 "assets/up.png",
                 color: Colors.black,
                 fit: BoxFit.scaleDown,
               ),
             )
           ],
         ),
       );
     }
   }
```