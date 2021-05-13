
import 'package:flutter/material.dart';

class Branding{
  String branding;
  String category;

  Branding({this.branding, this.category});

  Color brandingPrimaryColor(){
    if(this.category=="Branding") return Color(0xFF05C3EB);
    if(this.category=="UI/UX") return Color(0xFFFED430);
    if(this.category=="Digital") return Color(0xFF702DE3);
    if(this.category=="Strategist") return Color(0xFFFF0000);
  }

  Color brandingBackColor(){
    if(this.category=="Branding") return Color(0xFFD9F8FC);
    if(this.category=="UI/UX") return Color(0xFFFFFBE7);
    if(this.category=="Digital") return Color(0xFFE6DDF5);
    if(this.category=="Strategist") return Color(0xFFF3D8D9);
  }

}

List<Branding> brandingList=[
  Branding(
    branding: "UX Research",
    category: "Branding"
  ),
  Branding(
      branding: "Awareness Research",
      category: "UI/UX"
  ),
  Branding(
      branding: "Create New UI - Pertamina",
      category: "UI/UX"
  ),
  Branding(
      branding: "Moodboard Audience",
      category: "Digital"
  ),
  Branding(
      branding: "Audience Moodboard",
      category: "Strategist"
  ),
  Branding(
      branding: "Color Pallete",
      category: "Digital"
  ),
  Branding(
      branding: "Tipography Study",
      category: "Strategist"
  ),
  Branding(
      branding: "Sketch basic Logo",
      category: "Branding"
  ),
  Branding(
      branding: "Purchase Mockup",
      category: "Digital"
  ),
];