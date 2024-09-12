import 'package:flutter/material.dart';

class CustomBottomDescription extends StatelessWidget {
  const CustomBottomDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'A Technical Event',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: const Color(0xFFBFC9CA),),
        ),
        
      ],
    );
  }
}