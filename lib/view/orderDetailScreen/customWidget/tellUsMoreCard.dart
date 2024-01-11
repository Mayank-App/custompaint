import 'package:flutter/material.dart';

import '../../../utils/appColor.dart';
import '../../../utils/appString.dart';

class TellUsMoreCard extends StatelessWidget{
  const TellUsMoreCard({super.key});

  @override
  Widget build(BuildContext context) {
   return  Container(
     margin: const EdgeInsets.all(15),
     padding: const EdgeInsets.all(15),
     decoration: BoxDecoration(
         color: AppColor.white,
         borderRadius: BorderRadius.circular(10)
     ),
     child: Row(
       children: [
         Container(
           height: 54,
           width: 54,
           decoration: BoxDecoration(
               border: Border.all(color: Colors.yellow,width: 2),
               borderRadius: BorderRadius.circular(27)
           ),
           child: const Icon(Icons.message_outlined,color: Colors.yellow,size: 35,),
         ),
          Expanded(
           child: Padding(
             padding: const EdgeInsets.only(left: 12,right: 12),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(AppString.tellUsMore ,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                 Text(AppString.shoppingExperience,style: const TextStyle(color: Colors.grey,fontSize: 12))
               ],
             ),
           ),
         ),
         Container(
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(6),
                 color: AppColor.appBarColor
             ),
             child: Text(AppString.tellGo,style: TextStyle(color: AppColor.white,fontSize: 14,fontWeight: FontWeight.w600),))
       ],
     ),
   );
  }

}