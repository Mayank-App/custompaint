import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintPractice1 extends StatefulWidget{
  const CustomPaintPractice1({super.key});

  @override
  State<CustomPaintPractice1> createState() => _CustomPaintPractice1State();
}

class _CustomPaintPractice1State extends State<CustomPaintPractice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
           child:  CustomPaint(
            painter: drawCustom(),
             size: MediaQuery.sizeOf(context)
           ),
         ),
    );
  }

}
class drawCustom extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color=Colors.black;
    paint.strokeWidth=2;

    //for horizental line

    Offset p1 =Offset(0.0, size.height/2);
    Offset p2=Offset(size.width, size.height/2);
    canvas.drawLine(p1, p2, paint);

    //for vertical line
    
    Offset p3 = Offset(size.width/2, 0.0);
    Offset p4 = Offset(size.width/2, size.height);
    canvas.drawLine(p3, p4, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}