import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';
import 'package:untitled/homm.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/first.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:any_animated_button/any_animated_button.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  String istapped = '';

  //  final imageList = [
  //   'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
  //   'https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg',
  //   'https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183__480.jpg',
  //   'https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg',
  // ];
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: new Center(
              child:
                  new Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ScaleTransition(
                scale: _animation,
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png",
                          height: 300, width: 300),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Background color
                  // Text Color (Foreground color)
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return homm();
                  }));
                },
                child: Text("map1"),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink // Background color
                    // Text Color (Foreground color)
                    ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return first();
                  }));
                },
                child: Text("user"),
              )
            ]),
      ]))),
    );

    // new Swiper(
    //     itemBuilder: (BuildContext context,int index){
    //       return Image.network(
    //               imageList[index],
    //               fit: BoxFit.cover,
    //             );
    //     },
    //     itemCount: 3,
    //     pagination: new SwiperPagination(),
    //     control: new SwiperControl(),
    //   ),    );
  }
}
