import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintPractices3 extends StatefulWidget{
  @override
  State<CustomPaintPractices3> createState() => _CustomPaintPractices3State();
}

class _CustomPaintPractices3State extends State<CustomPaintPractices3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
          painter:DrawCustom() ,
          size: Size(100,200),
        ),
      ),

    );
  }
}
class DrawCustom extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width * 100, size.height / 2);
    canvas.drawPath(path, _paint);
     // Rect rect = Rect.fromCenter(center: Offset(size.width/2,size.height/2), width: 100, height: 200);
  //  Rect rect = Rect.fromCircle(center: Offset(size.width/2,size.height/2), radius: 100);

   //Rect rect =Rect.fromLTRB(20, 40, 400, 400);
   // Rect rect = Rect.fromLTWH(50, 400, 300, 300);
   // canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(20)), paint);
  // canvas.drawLine(Offset(size.width, s), p2, paint)
   // canvas.drawRect(rect, paint);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return false;
  }

}