import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_challenge/home/bloc/home_bloc.dart';

class TypeWritterText extends StatefulWidget {
  const TypeWritterText({super.key});

  @override
  State<TypeWritterText> createState() => _TypeWritterTextState();
}

class _TypeWritterTextState extends State<TypeWritterText> {
  int _currentIndex = 0;
  int _currentCharIndex = 0;
  final List<String> _strings = [
    "We challenged you",
    "to build an app in Flutter",
    "in under 5kb of dart code",
    "here's what you made"
  ];
  void _typeWrittingAnimation() async{
    if (_currentCharIndex < _strings[_currentIndex].length) {
      _currentCharIndex++;
    } else {
      _currentIndex = (_currentIndex + 1) % _strings.length;
      _currentCharIndex = 0;
    }
    setState(() {});

    if(_currentCharIndex == _strings[_currentIndex].length){
      if(_currentIndex < 3){
        await Future.delayed(const Duration(seconds: 2));
        Future.delayed(const Duration(milliseconds: 50), () {
          _typeWrittingAnimation();
        });      
      }else{
        context.read<HomeBloc>().add(const PhoneVideoEvent());
      }
    }else{
      if(_currentIndex < 3){
        Future.delayed(const Duration(milliseconds: 50), () {
          _typeWrittingAnimation();
        });      
      }else{
        context.read<HomeBloc>().add(const PhoneVideoEvent());
      }
    }

  }

  @override
  void initState() {
    super.initState();
    _typeWrittingAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          _strings[_currentIndex].substring(0, _currentCharIndex),
          style: const TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
