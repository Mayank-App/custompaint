import 'package:custompaint_assignment/utils/appImageUrl.dart';
import 'package:flutter/cupertino.dart';

class DraggleImage extends StatefulWidget{
  const DraggleImage({super.key});

  @override
  State<DraggleImage> createState() => _DraggleImageState();
}

class _DraggleImageState extends State<DraggleImage> {
  Offset _offset =  const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
       return GestureDetector(
         onPanUpdate: (details) {
           setState(() {
             _offset += details.delta;
           });
         },
         child: Center(
           child: Transform.translate(
             offset: _offset,
             child: Image.asset(
               AppImageUrl.mapImage, // Replace with your image URL
               width: size.width,
               height: size.height,
               fit: BoxFit.cover,
             ),
           ),
         ),
       );
  }
}