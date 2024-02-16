import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          // Display user avatar or profile picture
          radius: 50.0,
        ),
        SizedBox(height: 16.0),
        Text('Username: '),
        // Add more user information or components as needed
      ],
    );
  }
}
