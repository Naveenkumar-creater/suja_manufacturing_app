import 'package:flutter/material.dart';
import 'package:suja/features/presentation_layer/login_widget/login_widget.dart';

import '../../../utilities/customTheme.dart';
import '../../../utilities/responsive.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    child: SizedBox(
                        height: 40,
                        width: 100,
                        child: Image.asset(
                            'assets/images/suja-shoeis-logo-.png'))),
              ],
            )),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Padding(
                padding: EdgeInsets.only(right: 1),
                child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [ Colors.green,Colors.blue,], // Define your gradient colors
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            child: Text(
              'Suja Manufacturing',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  'Sign in to',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(right: 170),
                child: Text(
                  'Your Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
              Text(
                'Hello there !',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration( color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 350,
                height: 400,
                child: Login(),
              
                alignment: Alignment.center,
              ),
            ],
          ),
        )));
  }
}




