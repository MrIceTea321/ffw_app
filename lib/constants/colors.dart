import 'package:flutter/material.dart';

const darkBlue = Color(0xFF1572A1);
const lightBlue = Color(0xFF9AD0EC);
const red = Color(0xFFFF7272);
const white = Color(0xFFEEEEEE);
Color buttonColor = const Color(0xFFFFB5B5);
const shaderDecoration = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [lightBlue, darkBlue, darkBlue]));
