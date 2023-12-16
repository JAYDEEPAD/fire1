import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50-10),
      child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_rounded,),

                ),
              ),
              SizedBox(height: 50-20,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email_outlined,),

                ),
              ),
              SizedBox(height: 50-20,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Phone"),
                  prefixIcon: Icon(Icons.phone,),

                ),
              ),
              SizedBox(height: 50-20,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password,),

                ),
              ),
              SizedBox(height: 50-10,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text("SignUp")))
            ],
          )
      ),
    );
  }
}
