import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CleeperPractice1 extends StatefulWidget{

  @override

  State<CleeperPractice1> createState() => _CleeperPractice1State();

}

class _CleeperPractice1State extends State<CleeperPractice1> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            ClipPath(
              clipper: ClipperCustom(),
              child: Container(
                height: 250,
                color: Colors.brown.shade400,
              ),
            ),
            ClipPath(
              clipper: ClipperCustom(),
              child: Container(
                height: 220,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
class ClipperCustom extends CustomClipper<Path>{
  Path getClip(Size size) {
    debugPrint(size.height.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width/5, size.height);
    var firstEnd = Offset(size.width/2.25, size.height-50.0);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width-(size.width/3.24), size.height-105);
    var secondEnd = Offset(size.width, size.height-10);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
  // @override
  // getClip(Size size) {
  //   var path = Path();
  //   path.lineTo(0.0, size.height);
  //   var firstControlPoint = Offset(55, size.height / 1.4);
  //   var firstEndPoint = Offset(size.width / 1.7, size.height / 1.3);
  //   path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
  //       firstEndPoint.dx, firstEndPoint.dy);
  //   var secondControlPoint = Offset(size.width - (35), size.height - 95);
  //   var secondEndPoint = Offset(size.width, size.height / 2.4);
  //   path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
  //       secondEndPoint.dx, secondEndPoint.dy);
  //    path.lineTo(size.width, size.height - 40);
  //    path.lineTo(size.width, 0.0);
  //   path.close();
  //   return path;
  // }
  // @override
  // bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  //   // TODO: implement shouldReclip
  //   throw UnimplementedError();
  // }

}