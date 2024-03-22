import 'package:flutter/material.dart';
import 'package:suja/features/presentation_layer/login_widget/login_widget.dart';

import '../../../utilities/customTheme.dart';
import '../../../utilities/responsive.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // if (Responsive.isDesktop(context))
                //   SizedBox(
                //       width: 450,
                //       child: Image.asset('assets/images/sujashoei.jpeg',
                //       )),
                const SizedBox(width: defaultPadding),
                if (Responsive.isDesktop(context))
                  Container(
                    height: 400,
                    width: 500,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        // color: const Color.fromARGB(193, 189, 189, 189),
                        borderRadius: BorderRadiusDirectional.circular(5)),
                    child: const SizedBox(
                      width: 450,
                      child: Login(),
                    ),
                  ),
              ],
            ),
            // if (!Responsive.isDesktop(context))
            //   SizedBox(
            //       width: 450,
            //       child: Image.asset('assets/images/sujashoei.jpeg')),
            const SizedBox(height: defaultPadding),
             if (!Responsive.isDesktop(context))
                  Container(
                    height: 400,
                    width: 400,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        // color: const Color.fromARGB(193, 189, 189, 189),
                        borderRadius: BorderRadiusDirectional.circular(5)),
                    child: const SizedBox(
                      width: 450,
                      child: Login(),
                    ),
                  ),
          ]),
    );
  }
}