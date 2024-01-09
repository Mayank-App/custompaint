import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintPractice2 extends StatefulWidget{
  @override
  State<CustomPaintPractice2> createState() => _CustomPaintPractice2State();
}

class _CustomPaintPractice2State extends State<CustomPaintPractice2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        child: CustomPaint(
          painter:drawCustom() ,
          size: MediaQuery.sizeOf(context),
        ),
      ),
   );
  }
}
class drawCustom extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
     Paint paint = Paint();
     paint.style=PaintingStyle.stroke;
     paint.strokeWidth=2;
     paint.color= Colors.black;
     
     // for circle 
    Offset c = Offset(size.width/2, size.height/2);
    double radius = 100;
    canvas.drawCircle(c, radius, paint);
    
    //for inside horizental line
     Offset p1 = Offset(c.dx-radius, c.dy);
     Offset p2 = Offset(c.dx+radius, c.dy);
    canvas.drawLine(p1, p2, paint);

    //for inside vertical line

     Offset p3 = Offset(c.dx, c.dy-radius);
     Offset p4 = Offset(c.dx, c.dy+radius);
     canvas.drawLine(p3, p4, paint);
     
     // for square first line

    Offset p5 = Offset(c.dx-radius+radius/7, c.dy-radius/2);
     Offset p6 = Offset(c.dx+radius-radius/7, c.dy-radius/2);
    canvas.drawLine(p5, p6, paint);

    //for square second Line
     Offset p7 = Offset(c.dx+radius-radius/7, c.dy-radius/2);
     Offset p8 = Offset(c.dx+radius-radius/7, c.dy+radius/2);
     canvas.drawLine(p7, p8, paint);

     //for square third line

     Offset p9 = Offset(c.dx+radius-radius/7, c.dy+radius/2);
     Offset p10 = Offset(c.dx-(radius-radius/7), c.dy+radius/2);
     canvas.drawLine(p9, p10, paint);

     //for sqaure fourth line
     Offset p11 = Offset(c.dx-(radius-radius/7), c.dy+radius/2);
     Offset p12 = Offset(c.dx-radius+radius/7, c.dy-radius/2);
     canvas.drawLine(p11, p12, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
 return false;
  }

}