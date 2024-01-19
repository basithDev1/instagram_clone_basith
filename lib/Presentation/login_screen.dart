import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Application/login/login_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';
import 'package:instagram_clone/Core/constants.dart';
import 'package:instagram_clone/Core/utils.dart';
import 'package:instagram_clone/Presentation/Widgets/text_field.dart';
import 'package:instagram_clone/Presentation/signup_srceen.dart';
import 'package:instagram_clone/Responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/Responsive/responsive_screen_layout.dart';
import 'package:instagram_clone/Responsive/web_screen_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              SvgPicture.asset(
                "assets/ic_instagram.svg",
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcATop,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFieldWidget(
                contoller: _emailController,
                hintText: 'Enter Email',
                keyboardType: TextInputType.emailAddress,
              ),
              kheight20,
              TextFieldWidget(
                  contoller: _passwordController,
                  hintText: 'Enter Password',
                  keyboardType: TextInputType.text,
                  isPass: true),
              kheight20,
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.result == null) {
                    return;
                  } else if (state.result == 'succesful') {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const ResponsiveLayout(
                            webScreenLayout: WebScreenLayout(),
                            mobileScreenLayout: MobileScreenLayout()),
                      ),
                    );
                  } else if (state.isError) {
                    snackBar(state.result!, context);
                  }
                },
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      log(_emailController.text);
                      BlocProvider.of<LoginBloc>(context).add(
                        LoginEvent.firstEvent(
                          email: _emailController.text,
                          password: _passwordController.text,
                        ),
                      );
                    },
                    child: state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                              color: blueColor,
                            ),
                            child: const Text('Login'),
                          ),
                  );
                },
              ),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text('dont have an account'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Flexible(
                flex: 3,
                child: Container(),
              )
            ],
          ),
        ),
      )),
    );
  }
}
