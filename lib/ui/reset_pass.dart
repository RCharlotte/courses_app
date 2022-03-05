
import 'package:courses_app/ui/view_courses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/btn.dart';
import 'widgets/txt_field.dart';

class ResetPass extends StatefulWidget {
    const ResetPass({Key? key}) : super(key: key);

  @override
  _ResetPassState createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(108, 99, 255, 1),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          "Reset Password",
        ),
      ),
      
      body: Container(
        width: Get.size.width ,
        height: MediaQuery.of(context).size.height ,
        padding: EdgeInsets.all(20) ,
        child: SingleChildScrollView(
          child: Column(           

            children: [

               //adding an image
              Container(
                height: Get.size.height *.3,
                width:  Get.size.height *.3,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/forgotpass2.png"))),
              ),

              //adding space
              

              SizedBox(
                height: 18,
                ),

              //Text

              Text("Reset Password", style: Theme.of(context).textTheme.headline5!.copyWith()),
              

              //adding space
              SizedBox( height: 18,),


              //custom text field

              TxtField(inputType: TextInputType.visiblePassword, hintText: "Enter new password", obscureText: true),
              
              
              //adding space
              SizedBox( height: 18,),


              //custom text field

              TxtField(inputType: TextInputType.visiblePassword, hintText: "Repeat new password", obscureText: true),

              

             SizedBox( height: 16,),

            Btn(text: "Save New Password", onPressed: (){
              Get.to(()=> ViewCourses());

            }),

            //signup
            SizedBox( height: 25,),

            

            ],
          ),
          
          ),

      ),

    );
  
  }
}