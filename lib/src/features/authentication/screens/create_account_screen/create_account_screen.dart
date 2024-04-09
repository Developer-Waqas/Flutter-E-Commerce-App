import 'package:e_commerce_app/src/widgets/custom_button/custom_button.dart';
import 'package:e_commerce_app/src/widgets/custom_textfield/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'StyleMart',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'Pakistan\'s No.1 Online Shopping Center',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Create account & start shopping now!',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Username',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomTextFormField(
                hintText: 'Create your username',
                prefixIcon: Icon(
                  CupertinoIcons.person,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Email or Phone Number',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomTextFormField(
                hintText: 'Enter Email or phone number',
                prefixIcon: Icon(
                  CupertinoIcons.mail,
                  size: 27,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomTextFormField(
                hintText: 'Create your password',
                prefixIcon: Icon(
                  CupertinoIcons.lock,
                  size: 27,
                ),
                suffexIcon: Icon(
                  CupertinoIcons.eye,
                  size: 27,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Custombutton(
                text: 'Create Account',
                onPressed: () {},
                height: 55,
                width: 350,
                borderRadius: 25,
                color: purple900,
                textStyle: Theme.of(context).textTheme.bodyMedium,
                padding: const EdgeInsets.symmetric(horizontal: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Or using other method',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: purple900),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: NetworkImage(
                          'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png',
                        ),
                        height: 30,
                        width: 30,
                        loadingBuilder: (context, widget, imageChunkEv) {
                          return CupertinoActivityIndicator(
                            color: purple900,
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'SignUp with Google',
                      style: TextStyle(
                        fontFamily: 'UbuntuMedium',
                        color: purple900,
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                height: 45,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: purple900),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image(
                        image: NetworkImage(
                          'https://e7.pngegg.com/pngimages/588/1007/png-clipart-logo-computer-icons-facebook-facebook-blue-text.png'
                        ),
                        height: 30,
                        width: 30,
                        loadingBuilder: (context, widget, imageChunkEv) {
                          return CupertinoActivityIndicator(
                            color: purple900,
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'SignUp with FaceBook',
                      style: TextStyle(
                        fontFamily: 'UbuntuMedium',
                        color: purple900,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
