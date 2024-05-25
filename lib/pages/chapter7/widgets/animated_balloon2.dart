
import 'package:flutter/material.dart';

class AnimatedBalloonWidget2 extends StatefulWidget {
  const AnimatedBalloonWidget2({super.key});

  @override
  State<AnimatedBalloonWidget2> createState() => _AnimatedBalloonWidget2State();
}

class _AnimatedBalloonWidget2State extends State<AnimatedBalloonWidget2> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animationFloatUp ;
  late Animation<double> _animationGrowSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
  }
  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _balloonHeight = MediaQuery
        .of(context)
        .size
        .height / 2;
    double _balloonWidth = MediaQuery
        .of(context)
        .size
        .height / 3;
    double _balloonBottomLocation = MediaQuery
        .of(context)
        .size
        .height - _balloonHeight;

    _animationFloatUp = Tween(begin: _balloonBottomLocation, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );
    _animationGrowSize = Tween(begin: 50.0, end: _balloonWidth).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.elasticInOut),
      ),
    );
    return AnimatedBuilder(
        animation: _animationFloatUp,
        builder:  (context, child) {
          return Container(
              child: child,
              margin: EdgeInsets.only(
              top: _animationFloatUp.value,
            ),
            width: _animationGrowSize.value,
          );
        },
      child: GestureDetector(
        onTap: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child:  Image.asset('lib/assets/images/red-balloon-heart-party-supply-bxJP77Rj_t.jpg',
            height: _balloonHeight, width: _balloonWidth),
      ),
    );
  }
}