import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/jobListing.dart';
import 'package:job_posting_app/screens/signUp.dart';
import '../components/appButton.dart';
import '../components/appTextField.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: const EdgeInsets.only(top: 110, left: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's Sign you in",
              style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            const Text("Welcome back\nyou've been missed !",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            SizedBox(height: 47),
            AppTextField(placeholder: "Enter your email address"),
            AppTextField(placeholder: "Enter your password"),

            Spacer(),
            
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignUp())
                );
              }, // onTap
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? ",
                    style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
                  ),
                  Text("Register",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),

            SizedBox(height: 11),
            AppButton(label: "Sign In", onPress: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => JobListing())
              );
            }),

          ], // children
        ),
      ),
    );
  } // build


  //  void SignInPress(){
  //     print("hi");
  //     Navigator.of(context).push(
  //         MaterialPageRoute(builder: (_) => SignUp())
  //     );
  // } // End of SignUpPress

} // end of SignIn Class