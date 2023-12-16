import 'package:fire1/src/constaints/image_strings.dart';
import 'package:fire1/src/constaints/sizes.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:fire1/src/features/authentication/screens/signup/widgets/signup_form_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/login_form_widget.dart';
import 'package:fire1/src/constaints/colors.dart';


void main(){
  runApp(
      MaterialApp(title: "SignUp Screen", debugShowCheckedModeBanner: false),);
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tdefultSize),
            child: Column(
              children: [
                FormHeaderWidget(image: tWelcomeImage,title: tSignupTitle,subtitle: tSignupSubTitle,),
                SignUpFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: (){}, 
                          icon: Image(image: AssetImage(tGoogleLogoImage),
                            width: 20.0,

                          ),

                          label: Text("SIGN-IN WITH GOOGLE")),
                    ),
                    TextButton(onPressed: (){},
                        child: Text.rich(TextSpan(
                          children: [
                            TextSpan(text: tAlreadyHaveAccount, style: Theme.of(context).textTheme.titleMedium),

                            TextSpan(text:  tLogin.toUpperCase(), style: TextStyle(color: Colors.lightBlue))
                          ]
                        )))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

