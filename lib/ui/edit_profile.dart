
import 'package:courses_app/ui/view_courses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/btn.dart';
import 'widgets/txt_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

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
          "Edit Profile",
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
                height: 120,
                width: 120,
                child: Stack(
                  children: [
                    InkWell(
                      onTap: (){},
                      child:Container(
                        height:120,
                        width:120,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/course.png")),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromRGBO(230, 88, 62, 1), width: 2),
),
                            
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 88, 62, 1),
                              shape: BoxShape.circle),
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 24,
                          )),

                    ),
                  ]
                ),
                
              ),

              //adding space
              

              SizedBox(
                height: 25,
                ),

              //Text

              //Text("Reset Password", style: Theme.of(context).textTheme.headline5!.copyWith()),
              

              //adding space
              SizedBox( height: 25,),


              //custom text field

              TxtField(inputType: TextInputType.text, hintText: "Full names", obscureText: false),
              
              
              //adding space
              SizedBox( height: 15,),


              //custom text field

              TxtField(inputType: TextInputType.emailAddress, hintText: "Email", obscureText: false),

              

             SizedBox( height: 25,),

            Btn(text: "Save details", onPressed: (){
             // Get.to(() => Profile());

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