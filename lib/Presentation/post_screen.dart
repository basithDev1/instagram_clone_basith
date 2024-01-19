import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Application/Post/post_bloc.dart';
import 'package:instagram_clone/Application/PostUpload/post_upload_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';
import 'package:instagram_clone/Presentation/post_upload_screen.dart';
import 'package:photo_manager/photo_manager.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<PostBloc>(context).add(const PostEvent.firstEvent());
      },
    );
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              return PostScreenAppBar(
                iconButton: IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PostUploadScreen(),
                          ),
                        );
                      },
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<PostUploadBloc>(context).add(
                            PostUploadEvent.firstEvent(
                                takenAsset: state.assetToDisplay!),
                          );
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const PostUploadScreen()));
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              color: blueColor, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
        body: Column(
          children: [
            BlocBuilder<PostBloc, PostState>(
              builder: (context, state) {
                return SizedBox(
                  height: height * 0.5,
                  child: state.assetToDisplay == null
                      ? const SizedBox.shrink()
                      : Stack(
                          children: [
                            Positioned.fill(
                              child: AssetEntityImage(
                                state.assetToDisplay!,
                                isOriginal: false,
                                thumbnailSize: const ThumbnailSize.square(1000),
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
                            if (state.assetToDisplay!.type == AssetType.video)
                              const Positioned.fill(
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 50,
                                  ),
                                ),
                              ),
                          ],
                        ),
                );
              },
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                  ),
                  BlocBuilder<PostBloc, PostState>(
                    builder: (context, state) {
                      // print("from uii1 ${state.albumList}");
                      bool multiple = state.isMultiple;
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.isError) {
                        return const Center(
                          child: Text('Error'),
                        );
                      } else if (state.albumList.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return Row(
                          children: [
                            if (state.selectedAlbum == null)
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                  color: mobileBackgroundColor,
                                ),
                              ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    albums(height / 1, context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      state.selectedAlbum == null
                                          ? ''
                                          : state.selectedAlbum!.name ==
                                                  'Recent'
                                              ? 'Gallery'
                                              : state.selectedAlbum!.name,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    albums(height / 1, context);
                                  },
                                  child: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: IconButton(
                                onPressed: () {
                                  BlocProvider.of<PostBloc>(context).add(
                                    const PostEvent.toggleMultipleEvent(),
                                  );
                                  BlocProvider.of<PostBloc>(context).add(
                                    const PostEvent
                                        .removingAssetFromSelectedList(),
                                  );
                                },
                                icon: Icon(
                                  multiple == true
                                      ? Icons.note_add
                                      : Icons.note_add_outlined,
                                  color: multiple == true
                                      ? blueColor
                                      : mobileBackgroundColor,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        );
                      }
                    },
                  ),
                  BlocBuilder<PostBloc, PostState>(
                    builder: (context, state) {
                      List<AssetEntity> assetList = state.assetList;
                      // print("from uii $assetList");
                      return Flexible(
                        child: assetList.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : GridView.builder(
                                itemCount: assetList.length,
                                physics: const BouncingScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        mainAxisSpacing: 1,
                                        crossAxisSpacing: 1),
                                itemBuilder: (context, index) {
                                  AssetEntity assetEntity = assetList[index];
                                  return assetWidget(assetEntity);
                                },
                              ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void albums(height, context) {
    showModalBottomSheet(
      backgroundColor: const Color(0xff101010),
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      builder: (context) {
        return BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.albumList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    AssetPathEntity selectedAlbum2 = state.albumList[index];
                    BlocProvider.of<PostBloc>(context).add(
                      PostEvent.selectedAlbum(selectedAlbum2),
                    );

                    Navigator.of(context).pop();
                  },
                  title: Text(
                    state.albumList[index].name == "Recent"
                        ? "Gallery"
                        : state.albumList[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget assetWidget(AssetEntity assetEntity) =>
      BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<PostBloc>(context).add(
                PostEvent.assetToDisplay(assetEntity),
              );

              // selectedEntityToDisplay = assetEntity;
              // setState(
              //   () {
              //     selectedEntity = assetEntity;
              //   },
              // );
            },
            child: Stack(
              children: [
                Positioned.fill(
                  child: AssetEntityImage(
                    assetEntity,
                    isOriginal: false,
                    thumbnailSize: const ThumbnailSize.square(250),
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
                if (assetEntity.type == AssetType.video)
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                Positioned.fill(
                  child: Container(
                    color: assetEntity == state.assetToDisplay
                        ? Colors.white60
                        : Colors.transparent,
                  ),
                ),
                if (state.isMultiple == true)
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<PostBloc>(context)
                              .add(PostEvent.selectingListofAsset(assetEntity));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: state.selectedAssetList
                                          .contains(assetEntity) ==
                                      true
                                  ? Colors.blue
                                  : Colors.white12,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                "${state.selectedAssetList.indexOf(assetEntity) + 1}",
                                style: TextStyle(
                                  color: state.selectedAssetList
                                              .contains(assetEntity) ==
                                          true
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      );
}
