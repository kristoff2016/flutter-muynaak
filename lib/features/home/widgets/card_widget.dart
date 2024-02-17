import 'package:flutter/material.dart';
import 'package:muynaak/core/utils/helpers.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String router;

  const CardWidget(
      {Key? key, required this.title, required this.icon, required this.router})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, router);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              color: Colors.green,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: AppFont.fontDefault,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
