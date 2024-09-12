import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class FavoriteCircle extends StatelessWidget {
  const FavoriteCircle({
    Key? key,
    required this.size,
    required this.percent,
  }) : super(key: key);

  final Size size;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: size.height * 0.02,
      right: 15,
      child: percent < 0.2
          ? TweenAnimationBuilder<double>(
              tween: percent < 0.17
                  ? Tween(begin: 1, end: 0)
                  : Tween(begin: 0, end: 1),
              duration: const Duration(milliseconds: 300),
              builder: (context, value, widget) {
                return Transform.scale(
                  scale: 1.0 - value,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 24, 15, 14),
                          Colors.brown.shade700,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      border: Border.all(
                        color: const Color(0xFFBFC9CA),
                        width: 3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 25, // Larger size for better classic feel
                      backgroundColor: const Color.fromARGB(235, 0, 0, 0), // Transparent because of custom container decoration
                      child: LikeButton(
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.share, // Share icon
                            color: Colors.white,
                            size: 30,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            )
          : const SizedBox(),
    );
  }
}
