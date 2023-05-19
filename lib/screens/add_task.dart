import 'package:flutter/material.dart';
import 'package:untitled2/utils/app_color.dart';
import 'package:untitled2/widgets/buttonwidget.dart';
import 'package:untitled2/widgets/textfieldWidget.dart';
import 'package:get/get.dart';
class AddTask extends StatelessWidget {
  TextEditingController nameControler = TextEditingController();
  TextEditingController detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20,right: 20),
        decoration: BoxDecoration(

            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(
                    "assets/12.jpg"
                )
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 60,),
                IconButton(onPressed: (){
                  Get.back();
                }, icon: Icon(Icons.arrow_back , color: AppColors.secondaryColor,))

              ],

            ),
            Column(
              children: [
                TextFieldWidget(textController: nameControler, hintText: 'Task Name', borderRadius: 25),
                SizedBox(height: 20,),
                TextFieldWidget(textController: detailController,maxLines: 4 , hintText: 'Task Details', borderRadius: 20),
                SizedBox(height: 15,),
                ButtonWidget(backgroundcolor: AppColors.textGrey, text: 'ADD', textColor: Colors.white)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
            )
          ],
        ),
      ),
    );
  }
}