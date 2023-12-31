import 'package:flutter/material.dart';

import 'package:fire1/src/constaints/image_strings.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({Key? key,
  required this.image,
  required this.title,
  required this.subtitle,
  }) : super(key: key);

  final image, title, subtitle;

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image),
          height: size.height * 0.2,
        ),

        Text(title, style: Theme.of(context).textTheme.titleMedium,),
        Text(subtitle, style:Theme.of(context).textTheme.titleMedium,)
      ],
    );
  }
}
