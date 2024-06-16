import 'package:dos/utility/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _sizeAnimation;
  late Animation _opacityAnimation;



  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000)
    );
    _sizeAnimation = Tween<double>(begin: 0.0,end:280.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear)
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end:1.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.decelerate)
    );
    _controller.forward();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AnimatedBuilder(
              animation: _sizeAnimation,
              builder: (context,child){
                return Opacity(
                  opacity: _opacityAnimation.value,
                  child: Container(
                    margin: EdgeInsets.only(top: _sizeAnimation.value),
                    child: child,
                  ),
                );
              },
          child: Center(child: Image.asset('assets/logo/logo.png',height: 250,)),
          ),
        ],
      ),
    );
  }
}
