import 'package:custompaint_assignment/utils/appColor.dart';
import 'package:custompaint_assignment/utils/appString.dart';
import 'package:flutter/material.dart';

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
                           const DeliverPartner(),
                            const SizedBox(height: 20,),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text(AppString.orderPlacedText,style: TextStyle(color: AppColor.appBarColor),)
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
                                children: List.generate(10, (index) => const Column(
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
}