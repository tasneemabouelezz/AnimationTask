import 'package:flutter/material.dart';



class AnimationPage extends StatefulWidget {
  @override  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _opacityAnimation = Tween<double>(begin: 10, end:0).animate(_controller);

    _controller.forward();
  }

  @override  void dispose() {
    _controller.dispose(); // Dispose the animation controller    super.dispose();
  }

  @override  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animation App Bar'),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _opacityAnimation,
          child: Text(
            'Tasneeeem',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}