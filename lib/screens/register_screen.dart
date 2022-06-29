import 'package:country_dial_code/country_dial_code.dart';
import 'package:flutter/material.dart';
import 'package:task1/components/button.dart';
import 'package:task1/components/help.dart';
import 'package:task1/components/or_widget.dart';
import 'package:task1/components/regsternote.dart';
import 'package:task1/components/txtfield.dart';
import 'package:task1/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController passwd = TextEditingController();
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
                      child: HelpWedget(txt: "Register"),
                    ),
                    CustomTextField(
                        controller: email,
                        hint: "Eg.example@email.com",
                        label: "Email",
                        validationMessage: "  "),
                    SizedBox(
                      height: 20,
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
                    CustomTextField(
                        controller: passwd,
                        hint: "Password",
                        label: "Password",
                        validationMessage: "  ",
                        suffix: Icon(
                          Icons.remove_red_eye,
                          color: hidepassword
                              ? Colors.black
                              : Colors.grey.shade300,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CustomButton(
                        color: Colors.blue,
                        label: "Register",
                        onpressed: () {},
                      ),
                    ),
                    OrWidget(),
                    CustomButton(
                      borderColor: Colors.blue,
                      color: Colors.white,
                      label: "Sign with by Google",
                      txtColor: Colors.blue,
                      onpressed: () {
                        if (fkey.currentState!.validate()) {
                          print("object");
                        }
                      },
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
                          text1: "Has any account ?",
                          text2: "Login",
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => LoginScreen())));
                          },
                          size: 15,
                        ),
                      ),
                    ),
                    RegisterNote(
                      color: Colors.blue,
                      text1:
                          "by registering this your account,you are agree to our",
                      text2: "\nterms and conditions",
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
