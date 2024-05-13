import 'package:flutter/material.dart';

class ShareFavoriteBox extends StatelessWidget {
  const ShareFavoriteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 220.0,
      width: 111.0,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('assets/images/favorite.jpg'), fit: BoxFit.cover),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Text(
        textAlign: TextAlign.center,
        'Поделитесь любимо...',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );
  }
}
