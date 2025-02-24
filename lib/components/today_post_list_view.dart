import 'package:flutter/material.dart';
import '../models/models.dart';
import '../components/components.dart'; // Import the barrel file where PostCard is available

class TodayPostListView extends StatelessWidget {
  final List<Post> posts;

  const TodayPostListView({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Today\'s Posts',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          // ignore: sized_box_for_whitespace
          Container(
            height: 400,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return PostCard(post: post); // Use the PostCard widget here
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}