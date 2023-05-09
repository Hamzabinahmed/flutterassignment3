import 'package:flutter/material.dart';
import 'package:flutterassignment3/screens/loginscreen.dart';
import '../components/custombutton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:60,right:20,left:20.0),
            child: Column(
              children: [
                // const SizedBox(
                //   height: 90,
                // ),
                const CustomCircleAvatar(radius: 70,),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Let's you in",
                        style:
                            TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: CustomContainer(
                          icon: Icons.facebook_rounded,
                          text: "Continue with Facebook",
                          color: Colors.blue),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: CustomContainer(
                          icon: Icons.facebook_rounded,
                          text: "Continue with Google",
                          color: Colors.blue),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: CustomContainer(
                        icon: Icons.apple_rounded,
                        text: "Continue with Apple",
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Text("or"),
                    ),
                  ],
                ),
                CustomButton(
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  text: 'Sign in with password',
                  size: 15,
                  weight: FontWeight.w400,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account ?"),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Sign up"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
