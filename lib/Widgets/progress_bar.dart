import 'package:flutter/material.dart';

circularProgress(){
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 12),
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(
        Color(0xFF5506F5),
      ),
    ),
  );
}