import 'package:courses_app/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view_courses.dart';
import 'widgets/btn.dart';
import 'widgets/txt_field.dart';

class Signup extends StatefulWidget {
  const Signup ({ Key? key }) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String _currentSelectedValue;
  @override
  void initState() {
    _currentSelectedValue= "mentee";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _selectType= [
      "mentee",
      "mentor/teacher",
    ];
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
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/signup2.png"))),
              ),

              //adding space
              

              SizedBox(
                height: 18,
                ),

              //Text

              Text("Welcome to Pwani Teknowgalz Courses! \n\nCreate an Account",
               style: Theme.of(context).textTheme.headline5),
              

              //adding space
              SizedBox( height: 18,),


              //drop down form field
              FormField<String>(builder: 
              (FormFieldState<String> state){
                return InputDecorator(decoration: InputDecoration( 
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Mentor or Mentee",
                  contentPadding: const EdgeInsets.only(
                    left:14, bottom: 16, top:16),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)
                     ),
                    enabledBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15))),
                      child: DropdownButtonHideUnderline(child: DropdownButton<String>(
                        value: _currentSelectedValue,
                        isDense: true,
                        onChanged: (newValue){
                          setState(() {
                            _currentSelectedValue=newValue!;
                            state.didChange(newValue);                   
                          });
                        },
                        items:_selectType.map((String value) {
                          return DropdownMenuItem<String>(value: value , child: Text(value));
                        }).toList(),
                      ),),);
              }),

              //adding space
              SizedBox( height: 16,),

              //custom text field
              TxtField(inputType: TextInputType.text, hintText: "Full name", obscureText: false),

              //adding space
              SizedBox( height: 16,),

              //custom text field
              TxtField(inputType: TextInputType.emailAddress, hintText: "Email", obscureText: false),
              
              SizedBox( height: 16,),

              //custom text field
              TxtField(inputType: TextInputType.text, hintText: "Password", obscureText: true),

              SizedBox( height: 20,),

            
            //continue to next screen :ViewCourses 
            Btn(text: "Register", onPressed: (){
              Get.to(()=> ViewCourses());

            }),

            //signup
            SizedBox( height: 25,),

            InkWell(
              onTap:() {
                Get.to(()=> Login());
              },

              child: RichText(text: TextSpan(
                text:"Already have an account?", 
                style: TextStyle(color: Colors.black87),
            
                children: <TextSpan>[
                  TextSpan(
                    text: " Login",            
                    style: TextStyle(color: Color.fromRGBO(230, 88, 62, 1)))
            
                ])),
            )

            ],
          ),
          
          ),

      ),

    );
  ;
  }
}