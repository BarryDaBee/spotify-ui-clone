import 'package:flutter/material.dart';

class ShrinkGrowAnimation extends StatefulWidget {
  final Widget? child;
  const ShrinkGrowAnimation({Key? key, this.child}) : super(key: key);

  @override
  _ShrinkGrowAnimationState createState() => _ShrinkGrowAnimationState();
}

class _ShrinkGrowAnimationState extends State<ShrinkGrowAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    _controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Transform.scale(scale: 1, child: widget.child),
    );
  }
}
