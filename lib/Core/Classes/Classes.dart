// class MentorInfo{
//   String portfolioLink;
//   String Fun_Fact;
//   String Num_yof;
//   String BD;
//   String Location;
//   String Occupation;
//   String Hobbles;
//
//   MentorInfo(this.Location,this.BD,this.Fun_Fact,this.Hobbles,this.Num_yof,this.Occupation,this.portfolioLink);
// }

import 'package:flutter/material.dart';

class Skills{
  String Skill_Type="";
  String Skill_Image="";
  String Screen_Info="";
  String Screen_type="";
  Skills(this.Screen_Info,this.Screen_type,this.Skill_Type,  this.Skill_Image);
}

class user {
  String f_name="";
  String l_name="";
  String email="";
  String pass ="";
  String Role ="";
  String AreaOF_Interest="";
  List<String> Interests= [];
  String Mentee_Goal = "";
  String Goal_Desc ="";
}

class PortfolioForm{
  final TextEditingController ProjectNameController = TextEditingController();
  final TextEditingController ProjectDescController = TextEditingController();
  final TextEditingController ProjectLinkController = TextEditingController();
}

class WorkExperienceForm{
  final TextEditingController WorkPlaceNameController = TextEditingController();
  final TextEditingController PositionHeldController = TextEditingController();
  final TextEditingController StartDateController = TextEditingController();
  final TextEditingController EndDateController = TextEditingController();
}

class EducationBackGroundForm{
  final TextEditingController InstitutionNameController = TextEditingController();
  final TextEditingController EducationLevelController = TextEditingController();
  final TextEditingController COStudyController = TextEditingController();
  final TextEditingController YOeducationController = TextEditingController();
}