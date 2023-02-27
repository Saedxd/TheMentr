library slider_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slider_event.g.dart';

abstract class SliderEvent {}

abstract class PostLOgin extends SliderEvent
    implements Built<PostLOgin,PostLOginBuilder> {

  String?  get Email;
  String?  get password;
  String?  get fcmToken;

  PostLOgin._();

  factory PostLOgin([updates(PostLOginBuilder b)]) = _$PostLOgin;
}

abstract class ChangePageIndex extends SliderEvent
    implements Built<ChangePageIndex,ChangePageIndexBuilder> {
  int? get index;

  ChangePageIndex._();
  factory ChangePageIndex([updates(ChangePageIndexBuilder b)]) = _$ChangePageIndex;
}
