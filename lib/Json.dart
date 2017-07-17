import 'package:full3/Feed.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Json {

  //Json();
  //String lol;
  String _card;
  String _source;
  String _companyName;
  String _jobTitle;
  String _hash;
  String _salary;
  String _location;

  Json(setCompanyName,setHash);

  /*Json.fromJson(Map value){
   getCompanyName()= value['Company Name'];
  }*/

  Map cardDetails (){

   return {"Company Name":this._companyName, "Job Title":this._jobTitle, "Salary":this._salary,"Location":this._location};
  }

  function(){
    _location = "here";
  }
  getSource(){
    return this._source;
  }

  getCompanyName(){
    return this._companyName;
  }

  getJobTitle(){
    return this._jobTitle;
  }

  getHash(){
    return this._hash;
  }

  getSalary(){
    return _salary;
  }

  getLocation(){
    return _location;
  }

  setCompanyName(){
    this._companyName = "@Google";
  }
  setHash(){
    this._hash="Flutter Developer #flutter #android #iOS";
  }





}