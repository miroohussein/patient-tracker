import 'package:flutter/material.dart';

class Logo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Logo();
  }

}
class _Logo extends State<Logo> with SingleTickerProviderStateMixin{
 late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController =AnimationController(
      duration: Duration(microseconds: 200), vsync: this
    );

    _animationController.forward();
    _animationController.addListener(() {
      print(_animationController.value);
    });
  }
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              height: 190,
              width: 190,
              child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,),
            ),
          ],
        ),
      ),

    );
  }

}