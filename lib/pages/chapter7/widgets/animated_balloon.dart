 import 'package:flutter/material.dart';

class AnimatedBalloonWidget extends StatefulWidget {
  const AnimatedBalloonWidget({super.key});

  @override
  State<AnimatedBalloonWidget> createState() => _AnimatedBalloonWidgetState();
}

class _AnimatedBalloonWidgetState extends State<AnimatedBalloonWidget> with TickerProviderStateMixin{
  late AnimationController _controllerFloatUp;
  late AnimationController _controllerGrowSize;
  late Animation<double> _animationFloatUp;
  late Animation<double> _animationGrowSize;

  @override
  void initState() {
    super.initState();
    _controllerFloatUp = AnimationController(duration: const Duration( seconds: 4),
    vsync: this);
    _controllerGrowSize = AnimationController(duration: const Duration(seconds: 2),
    vsync: this);
  }

  @override
  void dispose() {
    _controllerFloatUp.dispose();
    _controllerGrowSize.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    // create the balloon height, width, and page bottom position by using MediaQuery.of(context).size.
    double _balloonHeight = MediaQuery.of(context).size.height / 2;
    double _balloonWidth = MediaQuery.of(context).size.height / 3;
    double _balloonBottomLocation = MediaQuery.of(context).size.height - _balloonHeight;
    // start the animation
    _animationFloatUp = Tween(begin: _balloonBottomLocation, end: 0.0).
    animate(CurvedAnimation(parent: _controllerFloatUp, curve: Curves.fastOutSlowIn));
    _animationGrowSize = Tween(begin: 50.0, end: _balloonWidth).
    animate(CurvedAnimation(parent: _controllerGrowSize, curve: Curves.elasticInOut));
    _controllerFloatUp.forward();
    _controllerGrowSize.forward();

    return AnimatedBuilder(
        animation: _animationFloatUp,
        builder: (context, child) {
          return Container(
            child: child,
              margin: EdgeInsets.only(
                top: _animationFloatUp.value,

              ),
              width: _animationGrowSize.value,
          );
        },
        child: GestureDetector(onTap: () {
            if (_controllerFloatUp.isCompleted) {
              _controllerFloatUp.reverse();
              _controllerGrowSize.reverse();
            }
            else {
              _controllerFloatUp.forward();
              _controllerGrowSize.forward();
            }
          },
          child: Image.asset('lib/assets/images/red-balloon-heart-party-supply-bxJP77Rj_t.jpg',height: _balloonHeight,width: _balloonWidth,),
        ),
    );
  }
}
