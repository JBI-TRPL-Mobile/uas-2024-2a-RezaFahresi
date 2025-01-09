import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  final String userName;
  final String messagePreview;
  final String imageUrl;

  MessageItem({
    required this.userName,
    required this.messagePreview,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          userName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          messagePreview,
          style: TextStyle(color: Colors.grey[600]),
        ),
        trailing: IconButton(
          icon: Icon(Icons.more_vert, color: Colors.grey),
          onPressed: () {},
        ),
      ),
    );
  }
}
