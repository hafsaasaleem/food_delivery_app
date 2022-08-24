import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;
  final bool fade;
  const ShakeTransition({
    Key? key,
    required this.child,
    this.duration = const Duration(milliseconds: 1000),
    this.offset = 140.0,
    this.axis = Axis.horizontal,
    this.fade = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: duration,
      curve: Curves.ease,
      tween: Tween(begin: 1.0, end: 0.0),
      child: child,
      builder: (context, dynamic value, widget) {
        return Transform.translate(
            offset: axis == Axis.horizontal
                ? Offset(value * offset, 0.0)
                : Offset(0.0, value * offset),
            child: fade
                ? TweenAnimationBuilder(
                    duration: duration,
                    tween: Tween(begin: 0.0, end: 1.0),
                    child: child,
                    builder: (context, dynamic value, widget) {
                      return AnimatedOpacity(
                        opacity: value,
                        duration: const Duration(milliseconds: 500),
                        child: child,
                      );
                    })
                : child);
      },
    );
  }
}
