import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  final String name;
  final String status;
  final String avatarUrl;
  final double space;
  Contacts(this.avatarUrl, this.name, this.status, this.space);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            title: Row(
              children: [
                Text("$name"),
                SizedBox(
                  width: space,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Mobile",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ],
            ),
            subtitle: Text("$status"),
          )
        ],
      ),
    ));
  }
}
