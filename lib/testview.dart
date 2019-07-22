import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class testview extends StatefulWidget{

  String txt;
  testview({
    this.txt
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return testview_state();
  }

}

class testview_state extends State<testview>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(Platform.isAndroid){
      return getAndroidView();
    }else{
      return getIOSView();
    }
  }

  Widget getAndroidView(){
    return AndroidView(
      viewType: 'atmap.com.testview',
      creationParams: {'msg': widget.txt},
      creationParamsCodec: StandardMessageCodec(),
    );
  }

  Widget getIOSView(){

    return UiKitView(
      //设置标识
      viewType: "atmap.com.testview",
      creationParams: {
        "msg":widget.txt
      },
      creationParamsCodec: const StandardMessageCodec(),
    );
  }

}