import 'package:demo_flutter/utils/listtile.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomListTile(
          description: "How to seem like You always Have Your Shot Together?",
          author: "Johny Vino",
          time: "4 min read",
        ),
        CustomListTile(
          description: "Does Dry is January Actually Improve Your Health?",
          author: "Johny Vino",
          time: "4 min read",
        ),
        CustomListTile(
          description: "You do hire a designer to make something. You hire them.",
          author: "Johny Vino",
          time: "4 min read",
        ),
        CustomListTile(
          description: "How to seem like You always Have Your Shot Together",
          author: "Johny Vino",
          time: "4 min read",
        ),
        CustomListTile(
          description: "How to seem like You always Have Your Shot Together",
          author: "Johny Vino",
          time: "4 min read",
        ),
        SizedBox(height: 15,)
      ],
    );
  }
}