import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:uuid/uuid.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> storeUserImage(String childName, file, bool isPost) async {
    Reference _reference =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);

    if (isPost) {
      String id = const Uuid().v1();
      _reference = _reference.child(id);
    }

    UploadTask uploadTask = _reference.putData(file);
    TaskSnapshot snap = await uploadTask;
    String donwloadUrl = await snap.ref.getDownloadURL();

    return donwloadUrl;
  }
}
