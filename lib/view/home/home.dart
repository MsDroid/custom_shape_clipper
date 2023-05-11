import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project 1"),
      ),
      body: Center(
        child: ClipPath(
          clipper: Clip1Cliper(),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

class Clip1Cliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // second corner position (bottom left)
    path.lineTo(0, size.height);
    // third corner position (bottom right)
    path.lineTo(size.width, size.height);
    // 4th corner position (top right)

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldCliper) => true;
}
