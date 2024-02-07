import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class responsiveLayout extends StatelessWidget{
  final Widget mobileCartBody;
  final Widget tabletBody;


  responsiveLayout({required this.mobileCartBody, required this.tabletBody});

  @override
  Widget build (BuildContext context){
    return LayoutBuilder(
      builder: (context, Constraints){
        if (Constraints.maxWidth <600){
          return mobileCartBody;
        }else{
          return tabletBody;
        }
      }
      );
  }




}