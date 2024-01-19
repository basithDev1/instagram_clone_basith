import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

class Media extends StatelessWidget {
  const Media({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MediaServices {
  Future loadAlbums(RequestType requestType) async {
    var permission = await PhotoManager.requestPermissionExtend();
    List<AssetPathEntity> albumList = [];

    if (permission.isAuth == true) {
      albumList = await PhotoManager.getAssetPathList(type: requestType);
    } else {
      PhotoManager.openSetting();
    }

    return albumList;
  }

  Future loadAssets(AssetPathEntity selectedAlbum) async {
    final int count = await PhotoManager.getAssetCount();
    List<AssetEntity> assetList = await selectedAlbum.getAssetListRange(
      start: 0,
      end: count,
    );

    return assetList;
  }
}
