import 'package:flutter/material.dart';

class ListAnimation extends StatefulWidget {
  final Widget child;
  const ListAnimation({super.key, required this.child});

  @override
  State<ListAnimation> createState() => _ListAnimationState();
}

class _ListAnimationState extends State<ListAnimation> {
  @override
  bool startAnimation = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        curve: Curves.easeInOutQuart,
        duration: const Duration(milliseconds: 700),
        opacity: startAnimation ? 1.0 : 0.0,
        child: widget.child);
  }
}

