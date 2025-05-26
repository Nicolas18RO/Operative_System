// time_widget.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:opeterative_system/Components/Widgets/my_text.dart';
import 'package:opeterative_system/Desktop%20Module/Services/time_services.dart';

class TimeWidget extends StatefulWidget {
  final double fontSize;
  const TimeWidget({super.key, required this.fontSize});

  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  late String _currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = TimeService.getCurrentTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = TimeService.getCurrentTime();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyTextDesktop(
      texto: _currentTime,
      fontSizeText: widget.fontSize,
      color: const Color(0xFFFEF5FE),
    );
  }
}
