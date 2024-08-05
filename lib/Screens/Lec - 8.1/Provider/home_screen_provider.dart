import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../modal/photosmodal.dart';

class PhotosProvider extends ChangeNotifier{
  List<PhotosModal> photoList = [];

  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/photos.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromList() async {
    List photo = await jsonParsing();
    photoList = photo.map((e) => PhotosModal.fromMap(e),).toList();
    notifyListeners();
  }

  PhotosProvider(){
    fromList();
  }
}
