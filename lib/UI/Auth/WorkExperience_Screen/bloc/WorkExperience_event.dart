library LinkToPortfolio_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'WorkExperience_event.g.dart';

abstract class WorkExperienceEvent {}


abstract class AddForm extends WorkExperienceEvent
    implements Built<AddForm,AddFormBuilder> {

 AddForm._();
  factory AddForm([updates(AddFormBuilder b)]) = _$AddForm;
}




abstract class RemoveForm extends WorkExperienceEvent
    implements Built<RemoveForm,RemoveFormBuilder> {
int? get Index;
 RemoveForm._();
 factory RemoveForm([updates(RemoveFormBuilder b)]) = _$RemoveForm;
}


