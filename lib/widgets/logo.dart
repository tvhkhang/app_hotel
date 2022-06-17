import 'package:flutter/material.dart';
class Logo extends StatelessWidget
{
  const Logo({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset('assets/image/BackgroundImageLoginPage.png',height: 127,),
          Positioned(
            child: Image.asset('assets/image/IconLoginPage.png',height: 100,),
            bottom: 0,
            left: 186/2-50,
          )
        ],
      );
  }
}