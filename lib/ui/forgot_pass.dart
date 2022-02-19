import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/btn.dart';
import 'widgets/txt_field.dart';

class forgotPass extends StatelessWidget {
  const forgotPass ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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

              Text("Forgot Password", style: Theme.of(context).textTheme.headline5!.copyWith()),
              

              //adding space
              SizedBox( height: 18,),


              //custom text field

              TxtField(inputType: TextInputType.emailAddress, hintText: "Email", obscureText: false),
              
              


              

             SizedBox( height: 16,),

            Btn(text: "Reset Password", onPressed: (){
             // Get.to(()=> ViewCourses());

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