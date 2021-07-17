import 'package:flutter/material.dart';

class Logo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Logo();
  }

}
class _Logo extends State<Logo> with SingleTickerProviderStateMixin{
 //late AnimationController _animationController;
 double _height =190;
 double _width = 190;
 bool _visible= true;
  @override
  // void initState() {
  //   super.initState();
  //   _animationController =AnimationController(
  //     duration: Duration(microseconds: 200), vsync: this
  //   );
  //
  //   _animationController.forward();
  //   _animationController.addListener(() {
  //     print(_animationController.value);
  //   });
  // }
  @override
  // void dispose() {
  //   super.dispose();
  //   _animationController.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: AnimatedOpacity(
                opacity:_visible==true? 1:0 ,
                duration: Duration(seconds: 3),
                child: AnimatedContainer(
                  curve: Curves.linear,
                  duration: Duration(seconds: 3),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: _height,
                          width: _width,
                          child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FloatingActionButton(
                child: Icon(Icons.refresh_sharp,),
                onPressed:(){
                  setState((){
                    _height =_height == 190? 700:190;
                    _width = _width == 190? 700:190;
                    _visible =!_visible;
                  });
                }
            ),
          ],
        ),
      ),

    );
  }

}