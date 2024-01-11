import 'package:flutter/material.dart';

import '../../../utils/appColor.dart';
import '../../../utils/appString.dart';

class DeliverPartner extends StatelessWidget{
  const DeliverPartner({super.key});

  @override
  Widget build(BuildContext context) {
   return  Row(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Container(
         height: 54,
         width: 54,
         decoration: BoxDecoration(
             border: Border.all(color: Colors.yellow,width: 2),
             borderRadius: BorderRadius.circular(27)
         ),
         child: const Icon(Icons.person,color: Colors.yellow,size: 35,),
       ),
       Expanded(
         child: Padding(
           padding: const EdgeInsets.only(left: 12,right: 12),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(AppString.nameText ,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
               Text(AppString.deliverPartner ,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
             ],
           ),
         ),
       ),
       Container(
           height: 42,
           width: 42,
           decoration: BoxDecoration(
               border: Border.all(color: Colors.grey.shade200,width: 2),
               borderRadius: BorderRadius.circular(21)
           ), child: Icon(Icons.call,size:20,color: AppColor.appBarColor,))
     ],
   );
  }

}