import 'package:fire1/src/constaints/image_strings.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(tWelcomeImage),
        height: size.height * 0.2,
        ),
        
        Text(tLoginTitle, style: Theme.of(context).textTheme.titleMedium,),
        Text(tLoginSubTitle, style:Theme.of(context).textTheme.titleMedium,)
      ],
    );
  }
}
