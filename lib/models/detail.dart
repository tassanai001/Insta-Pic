import 'package:flutter/material.dart';

class DetailModel {
  final String userName;
  final String comment;
  final String imageUrl;
  final String profileImage;
  final String imgtag;

  DetailModel({
    @required this.userName,
    @required this.comment,
    @required this.imgtag,
    @required this.profileImage,
    @required this.imageUrl,
  });
}
