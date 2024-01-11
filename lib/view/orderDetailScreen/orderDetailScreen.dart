import 'package:custompaint_assignment/utils/appColor.dart';
import 'package:custompaint_assignment/utils/appString.dart';
import 'package:flutter/material.dart';

import '../customPaintTask.dart';
import 'customWidget/deliverPartner.dart';
import 'customWidget/draggleImage.dart';
import 'customWidget/tellUsMoreCard.dart';
class OrderDetailScreen extends StatefulWidget{
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: size.height * 0.18,
        backgroundColor: AppColor.appBarColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:  Icon(
                  Icons.arrow_back_ios_new_sharp, color: AppColor.white, size: 22,),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AppString.appBarText1, style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,),),
                  Text(AppString.appBarText2, style: TextStyle(fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,),),
                  const SizedBox(height: 10,),
                  Text(AppString.appBarText3, style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white,),),
                  const SizedBox(height: 20,),
                  Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 190,
                      decoration: BoxDecoration(
                          color: AppColor.appBarContainer,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(child: Text(AppString.appBarText4,
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.white),)))
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
           const DraggleImage(),
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.45,
            maxChildSize: 0.99,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color:AppColor.bottomsheet1,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                       const TellUsMoreCard(),
                    //  const SizedBox(height: 10,),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        padding: const EdgeInsets.all(15),
                      //  height: 300,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child:  Column(
                          children: [
                          DeliverPartner(),
                            const SizedBox(height: 20,),
                            CustomPaint(
                              painter: CustomBoxDesigned1(),
                              child: Container(
                                // padding: const EdgeInsets.all(10),
                                // decoration: BoxDecoration(
                                //     color: Colors.green.shade50,
                                //   borderRadius: BorderRadius.circular(10)
                                // ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(AppString.orderPlacedText,style: TextStyle(color: AppColor.appBarColor),),
                                )
                              ),
                            ),
                             const SizedBox(height: 15,),
                            Container(
                            //  height: 100,
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey.shade400)
                              ),
                              child: Column(
                                children: List.generate(10, (index) =>  Column(
                                  children: [
                                    DeliverPartner(),
                                    SizedBox(height: 10,)
                                  ],
                                )),
                              )
                            ),

                          ],
                        ),


                      )

                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
  Offset _getOffsetOnCanvas(
      GlobalKey key,
      BuildContext context,
      Size objectSize,
      ) {
    RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
    Offset iconButtonPosition = renderBox.localToGlobal(Offset.zero);
    return Offset(iconButtonPosition.dx + objectSize.width / 2,
        iconButtonPosition.dy + objectSize.height / 2);
  }
}

class CustomBoxDesigned1 extends CustomPainter{
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
