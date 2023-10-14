import 'package:flutter/material.dart';

class SquarTile extends StatelessWidget {
  final String passImage;

  const SquarTile({
    super.key,
    required this.passImage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[200],
          border: Border.all(color: Colors.white)
      ),
      child: Image.asset(
        passImage,
        height: 40,
        width: 40,
      ),
    );
  }
}
