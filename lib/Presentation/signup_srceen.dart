import "dart:developer";
import "dart:typed_data";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/svg.dart";
import "package:image_picker/image_picker.dart";
import 'package:instagram_clone/Application/signUp/signup_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';
import "package:instagram_clone/Core/constants.dart";
import "package:instagram_clone/Core/utils.dart";
import "package:instagram_clone/Presentation/Widgets/text_field.dart";
import "package:instagram_clone/Presentation/login_screen.dart";
import "package:instagram_clone/Responsive/mobile_screen_layout.dart";
import "package:instagram_clone/Responsive/responsive_screen_layout.dart";
import "package:instagram_clone/Responsive/web_screen_layout.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  Uint8List? image;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  void selectImage() async {
    try {
      Uint8List im = await pickImage(ImageSource.gallery);

      setState(() {
        image = im;
      });
    } catch (e) {
      print('No image selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Flexible(
                //   flex: 1,
                //   child: Container(),
                // ),
                Stack(
                  children: [
                    image != null
                        ? CircleAvatar(
                            backgroundImage: MemoryImage(image!),
                            radius: 50,
                          )
                        : const CircleAvatar(
                            radius: 50,
                            backgroundColor: primaryColor,
                          ),
                    Positioned(
                      bottom: 0,
                      left: 70,
                      child: GestureDetector(
                        onTap: selectImage,
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
                kheight20,
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
                    contoller: _usernameController,
                    hintText: 'Enter Username',
                    keyboardType: TextInputType.text),
                kheight20,
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
                  isPass: true,
                ),
                kheight20,
                TextFieldWidget(
                    contoller: _bioController,
                    hintText: 'Add Your Bio',
                    keyboardType: TextInputType.text),
                const SizedBox(height: 15),
                BlocConsumer<SignupBloc, SignupState>(
                  listener: (context, state) {
                    // Listen for state changes and show the dialog based on the updated state
                    if (state.result == 'succesful') {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ResponsiveLayout(
                            webScreenLayout: WebScreenLayout(),
                            mobileScreenLayout: MobileScreenLayout(),
                          ),
                        ),
                      );
                    } else {
                      snackBar(state.result, context);
                    }
                  },
                  builder: (context, state) {
                    return InkWell(
                      onTap: () async {
                        if (image == null) {
                          snackBar('please add an image', context);
                        }
                        log('Signup pressed');
                        BlocProvider.of<SignupBloc>(context).add(
                          SignupEvent.firstEvent(
                            username: _usernameController.text,
                            bio: _bioController.text,
                            email: _emailController.text,
                            image: image!,
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
                              child: const Text('SignUp'),
                            ),
                    );
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("pressed");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ),
                        );
                      },
                      child: const Text('Login'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Flexible(
                  flex: 5,
                  child: Container(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
