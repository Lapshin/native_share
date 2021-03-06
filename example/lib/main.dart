import 'package:flutter/material.dart';
import 'package:native_share/native_share.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  void handlePress() async {
    print('Starting share');
    int res = await NativeShare.share({'title':'Plugin example app','url':'https://github.com/persenlee/native_share',
      'image' : 'http://imgsrc.baidu.com/imgad/pic/item/908fa0ec08fa513de63a3ec7376d55fbb2fbd913.jpg'});

    print('Sharing finished with code $res');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(''),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            handlePress();
          },
        ),
      ),
    );
  }
}
