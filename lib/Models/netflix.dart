import 'package:flutter/material.dart';

class Netflix {
  String _id;
  String _name, _slug, _description;
  String _image, _season;

  Netflix(this._id, this._name, this._slug, this._description, this._season,
      this._image);

  String get id => _id;
  String get name => _name;
  String get slug => _slug;
  String get description => _description;
  String get season => _season;
  String get image => _image;

  void set id(String value) => _id = value;
  void set name(String value) => _name = value;
  void set slug(String value) => _slug = value;
  void set description(String value) => _description = value;
  void set season(String value) => _season = value;
  void set image(String value) => _image = value;
}
