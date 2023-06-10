import 'dart:ffi';

import 'package:flutter/material.dart';

class Film{
  final String id;
  final String poster;
  final String judul;
  final String genre;
  final String desc;
  final double rating;

  // membuat constructor
  Film({required this.id, required this.poster, required this.judul, required this.genre, required this.desc, required this.rating});

}