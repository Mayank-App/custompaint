import 'package:custompaint_assignment/utils/appColor.dart';
import 'package:flutter/material.dart';

import '../utils/appString.dart';
import '../utils/routes/routes_name.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
            Navigator.pushNamed(context, RoutesName.orderDetailScreen);

                },
                child: Text(AppString.homeScreenText,style: TextStyle(color: AppColor.black),)),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, RoutesName.customPaintTaskScreen);

                },
                child: Text("CustomPaintTask",style: TextStyle(color: AppColor.black),))
          ],
        ),
      ),
    );
  }
}