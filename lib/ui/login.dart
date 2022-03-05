import 'dart:html';

import 'package:courses_app/ui/edit_profile.dart';
import 'package:courses_app/ui/forgot_pass.dart';
import 'package:courses_app/ui/signup.dart';
import 'package:courses_app/ui/view_courses.dart';
import 'package:courses_app/ui/widgets/btn.dart';
import 'package:courses_app/ui/widgets/txt_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Login extends StatelessWidget {
  const Login ({ Key? key }) : super(key: key);

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

               //adding image
              Container(
                height: Get.size.height *.3,
                width:  Get.size.height *.3,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/login2.png"))),
              ),

              //adding space
              

              SizedBox(
                height: 18,
                ),

              //Text

              Text("Login", style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.2 )),
              

              //adding space
              SizedBox( height: 18,),


              //custom text field

              TxtField(inputType: TextInputType.emailAddress, hintText: "Email", obscureText: false),
              
              SizedBox( height: 16,),

              //custom text field

              TxtField(inputType: TextInputType.text, hintText: "Password", obscureText: true),

              SizedBox( height: 10,),


              //a row with button at the end

              Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      TextButton(onPressed: (){
                        Get.to(()=> forgotPass());
                      }, child: Text("forgot password", style: TextStyle(color: Color.fromRGBO(247, 153, 46, 1)),)),

              // adding space
              SizedBox( height: 10,),

              //custom button

             // 

                    ],

              ),

             SizedBox( height: 10,),

            Btn(text: "Login", onPressed: (){
              Get.to(()=> ViewCourses());

            }),

            //signup
            SizedBox( height: 25,),

            InkWell(
              onTap:() {
                Get.to(()=> Signup());
              },

              child: RichText(text: TextSpan(
                text:"Don\'t have an account?", 
                style: TextStyle(color: Colors.black87),
            
                children: <TextSpan>[
                  TextSpan(
                    text: " Sign Up",            
                    style: TextStyle(color: Color.fromRGBO(230, 88, 62, 1)))
            
                ])),
            )

            ],
          ),
          
          ),

      ),

    );
  }
}