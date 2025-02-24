// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';
import '../models/models.dart'; // Assuming your Post class is in the models.dart file

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(post.foodPictureUrl), // Assuming foodPictureUrl is a network image
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // Profile Image
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl), // Assuming profileImageUrl is a network image
                radius: 20,
              ),
            ),
            // Comment
            Positioned(
              bottom: 60,
              left: 10,
              right: 10,
              child: Text(
                post.comment,
                style: FooderlichTheme.darkTextTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            // Timestamp
            Positioned(
              bottom: 30,
              left: 10,
              child: Text(
                '${post.timestamp} minutes ago',
                style: FooderlichTheme.darkTextTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}