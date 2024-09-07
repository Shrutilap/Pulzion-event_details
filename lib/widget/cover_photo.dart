import 'package:flutter/material.dart';

class CoverPhoto extends StatelessWidget {
  const CoverPhoto({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 241, 204, 37),
          width: 2
        )
      ),
      width: size.width * 0.27,
      height: size.height * 0.18,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://i.pinimg.com/564x/82/4e/1c/824e1c7aabf7ee1377cc2af0c42fa12a.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}