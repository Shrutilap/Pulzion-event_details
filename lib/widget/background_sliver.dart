import 'package:flutter/material.dart';

class BackgroundSliver extends StatelessWidget {
  const BackgroundSliver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 0,
      child: Image.network('https://i.pinimg.com/originals/8c/89/bb/8c89bb567f6ea95d4618febc0774b658.gif', fit: BoxFit.cover,)
    );
  }
}