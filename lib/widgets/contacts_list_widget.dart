import 'package:flutter/material.dart';

import '../models/user.dart';
import 'button_image_profile_widget.dart';

class ContactsListWidget extends StatelessWidget {
  final List<User> userList;

  const ContactsListWidget({Key? key, required this.userList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Contatos",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.video_call),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
              itemCount: userList.length,
              itemBuilder: (context, index) {
                User user = userList[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ButtonImageProfileWidget(onTap: () {}, user: user),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
