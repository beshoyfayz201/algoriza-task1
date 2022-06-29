import 'package:country_dial_code/country_dial_code.dart';
import 'package:flutter/material.dart';
import 'package:task1/screens/register_screen.dart';

import '../components/button.dart';
import '../components/help.dart';
import '../components/or_widget.dart';
import '../components/regsternote.dart';
import '../components/txtfield.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phone = TextEditingController();
  bool hidepassword = true;
  GlobalKey<FormState> fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
          key: fkey,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                flexibleSpace: Image.asset(
                  "assets/images/log.jpg",
                  fit: BoxFit.fill,
                ),
                expandedHeight: 30,
                collapsedHeight: 150,
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "wlecome to the fashion daily",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: HelpWedget(txt: "Sign in"),
                    ),
                    CustomTextField(
                        controller: phone,
                        hint: "Eg.812578688",
                        prefix: CountryDialCodePicker(
                          initialSelection: 'EG',
                          flagImageSettings: FlagImageSettings(
                            width: 0,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        label: "Phone Number",
                        validationMessage: "Phone number is not registerd"),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CustomButton(
                        color: Colors.blue,
                        label: "Sign-in",
                        onpressed: () {
                          if (fkey.currentState!.validate()) {
                            print("object");
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: OrWidget(),
                    ),
                    CustomButton(
                      borderColor: Colors.blue,
                      color: Colors.white,
                      label: "Sign with by Google",
                      txtColor: Colors.blue,
                      onpressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset(
                          "assets/images/google.png",
                          height: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                        child: RegisterNote(
                          text1: "Dose not have an account?",
                          text2: "Register here",
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => RegisterScreen())));
                          },
                          size: 15,
                        ),
                      ),
                    ),
                    RegisterNote(
                      color: Colors.blue,
                      text1:
                          "use the application accourding to policy rules.any kinds of violation will be subjected to snactions",
                      text2: "\n ",
                      function: () {},
                      size: 12,
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
