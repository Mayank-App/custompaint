import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintTask extends StatefulWidget{
  @override
  State<CustomPaintTask> createState() => _CustomPaintTaskState();
}

class _CustomPaintTaskState extends State<CustomPaintTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.green,
     ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomPaint(
            painter: CustomBoxDesigned(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                   //   height: 100,
              child: Text("Mayank Dubey dehdhdhdhd fvvdfvdf gvfregvvg evfervgerfv  vevegevgh defwvhgergvfer erfefrvefvgerf"),
            ),
          ),
          //  size:Size(MediaQuery.sizeOf(context).width,100),
          ),
        ),
      ),
    );
  }
}
class CustomBoxDesigned extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint = Paint();
    // Paint myPaint = Paint()
    // ..color = Colors.green.shade200
    // ..style=PaintingStyle.fill;

    Paint paint = Paint()
      ..color = Colors.green.shade50
      ..style = PaintingStyle.fill;
    //
    // Paint paint2 = Paint()
    //   ..color = Colors.green.shade700
    //   ..style = PaintingStyle.fill;



    // paint.color = Colors.black;
    // paint.strokeWidth=2;
    // var knoubHeight = 15;
    // Offset p1 = Offset(0,0);
    // Offset  p2 = Offset(size.width/7, 0);
    //  canvas.drawLine(p1, p2, paint);
    //   Offset  p4 = Offset(p2.dx+knoubHeight, p2.dy-knoubHeight);
    //  canvas.drawLine(p2, p4, paint);
    //  Offset p5 = Offset(p2.dx+2*knoubHeight, 0);
    //  canvas.drawLine(p4, p5, paint);
    //  Offset p6 = Offset(size.width, 0);
    //  canvas.drawLine(p5,p6, paint);
    //  Path path = Path()
    //  ..moveTo(0, 0)
    // ..lineTo(80, 0)
    // ..arcToPoint(Offset(100, 20),radius: Radius.circular(20))
    // ..lineTo(100, 100)
    // ;
     //canvas.drawPath(path, myPaint);
     // Rect rect = Rect.fromCircle(center: center, rdius: radius)
     // canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint)

    Path path = Path();
    Rect rect = Rect.fromPoints(Offset.zero, Offset(size.width,size.height),);
    path.addRRect(RRect.fromRectAndRadius(rect, Radius.circular(10)));
    canvas.drawPath(path, paint);
    Path path1= Path()
    ..moveTo(20, 0)
    ..lineTo(30, -10)
    ..lineTo(40, 0);
    canvas.drawPath(path1, paint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}