import 'package:flutter/material.dart';

import 'type_writter_text.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.animation});

  final double width;
  final double height;
  final double animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: const Color(0xFF2861A1),
      child: Stack(
        children: [
          Positioned(
            left: width * 0.25,
            top: height * 0.3,
            child: Container(
              width: width * 0.1,
              height: width * 0.1,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF2F6FAE)),
            ),
          ),
          if (animation == 1)
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                width: width,
                height: height,
                child: const Center(
                  child: TypeWritterText(),
                ),
              ),
            ),
          Positioned(
            right: width * 0.2,
            bottom: height * 0.1,
            child: Container(
              width: width * 0.3,
              height: width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF2F6FAE)),
            ),
          )
        ],
      ),
    );
  }
}
