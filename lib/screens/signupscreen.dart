import 'package:flutter/material.dart';
import 'package:flutterassignment3/components/custombutton.dart';


import 'landingscreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Fill Your Profile",
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: CustomCircleAvatar(radius: 70,),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTextField(hinttext: "Full Name"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTextField(hinttext: "Nick Name"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTextField(
                      hinttext: "Date of Birth",
                      suffixicon: Icon(Icons.calendar_month_outlined),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTextField(
                      hinttext: "Email",
                      suffixicon: Icon(Icons.email_outlined),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTextField(
                      hinttext: "Gender",
                      suffixicon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: CustomButton(
                    onpressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LandingScreen()));
                    },
                    text: "Continue",
                    size: 15,
                    weight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
