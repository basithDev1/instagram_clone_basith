import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Application/Home/home_bloc.dart';
import 'package:instagram_clone/Application/Post/post_bloc.dart';
import 'package:instagram_clone/Application/PostUpload/post_upload_bloc.dart';
import 'package:instagram_clone/Application/Profile/profile_bloc.dart';

import 'package:instagram_clone/Application/Search/search_bloc.dart';
import 'package:instagram_clone/Application/login/login_bloc.dart';
import 'package:instagram_clone/Application/signUp/signup_bloc.dart';
import 'package:instagram_clone/Presentation/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Resources/authentication_methods.dart';
import 'package:instagram_clone/Resources/firestore_methods.dart';
import 'package:instagram_clone/Responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/Responsive/responsive_screen_layout.dart';
import 'package:instagram_clone/Responsive/web_screen_layout.dart';

import 'package:instagram_clone/firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyDTs2hvkgmLuGy4_EzVxIM8hL-TEzumXJQ',
      appId: '1:666170510847:web:2a17866298a9fcd6c9ebca',
      messagingSenderId: '666170510847',
      projectId: 'instagram-clone-d08d2',
      storageBucket: 'instagram-clone-d08d2.appspot.com',
    ));
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthMethod()),
        ),
        BlocProvider(
          create: (ctx) => SignupBloc(AuthMethod()),
        ),
        BlocProvider(create: (ctx) => PostBloc()),
        BlocProvider(
          create: (ctx) => PostUploadBloc(),
        ),
        BlocProvider(
          create: (ctx) => HomeBloc(
              firestoreRepo: FireStoreMethods(), authRepo: AuthMethod())
            ..add(
              const HomeEvent.firstEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => SearchBloc(firestoreRepo: FireStoreMethods())
            ..add(const SearchEvent.firstEvent()),
        ),
        BlocProvider(
            create: (context) => ProfileBloc(AuthMethod(), FireStoreMethods(),
                FirebaseAuth.instance.currentUser!.uid)
              ..add(const ProfileEvent.firstEvent())
              ..add(const ProfileEvent.getUserEvent()))
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Instagram Clone',
          theme: ThemeData(
            // scaffoldBackgroundColor: mobileBackgroundColor,

            primaryColor: Colors.white,
            // accentColor: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0,
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyMedium: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            tabBarTheme: const TabBarTheme(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
            ),
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
          ),
          home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  return const ResponsiveLayout(
                    webScreenLayout: WebScreenLayout(),
                    mobileScreenLayout: MobileScreenLayout(),
                  );
                } else if (snapshot.hasError) {
                  Text("${snapshot.error}");
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return const LoginScreen();
            },
          ),
        ),
      ),
    );
  }
}
