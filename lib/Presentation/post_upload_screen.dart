import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Application/PostUpload/post_upload_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';
import 'package:instagram_clone/Core/utils.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';

class PostUploadScreen extends StatelessWidget {
  const PostUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('called rebuilt');
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          50,
        ),
        child: PostScreenAppBar(
          iconButton: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Icon(
                Icons.arrow_back,
                color: mobileBackgroundColor,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: BlocConsumer<PostUploadBloc, PostUploadState>(
        listener: (context, state) {
          if (state.isPostUpdated == true) {
            Navigator.of(context).pop();

            snackBar('Post Uploaded Succesfully', context);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size * 0.70,
                  width: size * 0.55,
                  child: AssetEntityImage(
                    state.takenAsset!,
                    isOriginal: false,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: size * 0.3,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        BlocProvider.of<PostUploadBloc>(context).add(
                          PostUploadEvent.descriptionEvent(value: value),
                        );
                      },
                      textAlignVertical: TextAlignVertical.top,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        hintText: 'Write a Caption ',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.3,
                ),
                Container(
                    child: state.isLoading
                        ? const LinearProgressIndicator()
                        : const SizedBox()),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(
                    // height: size * 0.2,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<PostUploadBloc>(context).add(
                          PostUploadEvent.addToFirebaseEvent(
                              asset: state.takenAsset!),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: const Text(
                        'share',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  // void debounce({required VoidCallback callback, required Duration duration}) {
  //   Timer? timer;
  //   timer!.cancel();
  //   timer = Timer(duration, callback);
  // }
}
