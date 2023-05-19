import 'package:flutter/material.dart';
import 'package:untitled2/screens/add_task.dart';
import 'package:untitled2/screens/all_task.dart';
import 'package:untitled2/utils/app_color.dart';
import 'package:untitled2/widgets/buttonwidget.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/11.jpg"
            )
          )
        ),padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(text: 'Hello', style: TextStyle(
              color: AppColors.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 60,
            ),
              children : [
                TextSpan(
                  text: "\nStart Your beautiful journey"
                      ,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                )
                )
              ]
            )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/2.5,),
            InkWell(
              onTap: (){
                Get.to(()=>AddTask(), transition: Transition.zoom, duration: Duration(milliseconds: 500));
              },
              child: ButtonWidget(backgroundcolor: AppColors.mainColor,
                  text: 'Add Task', textColor: Colors.white),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.to(()=>AllTask(), transition: Transition.fadeIn,duration: Duration(seconds: 1));
              },
              child: ButtonWidget(backgroundcolor: Colors.white,
                  text: 'View All', textColor: AppColors.mainColor),
            )
          ],
        ) ,
      ),
    );
  }
}
