library LinkToPortfolio_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'LinkToPortfolio_event.g.dart';

abstract class LinkToPortfolioEvent {}


abstract class AddForm extends LinkToPortfolioEvent
    implements Built<AddForm,AddFormBuilder> {

 AddForm._();
  factory AddForm([updates(AddFormBuilder b)]) = _$AddForm;
}




abstract class RemoveForm extends LinkToPortfolioEvent
    implements Built<RemoveForm,RemoveFormBuilder> {
int? get Index;
 RemoveForm._();
 factory RemoveForm([updates(RemoveFormBuilder b)]) = _$RemoveForm;
}


