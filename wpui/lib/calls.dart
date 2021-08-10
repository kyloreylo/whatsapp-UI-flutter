import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class CallsItem extends StatelessWidget {
  final String avatarUrl;
  final String name;

  final double space;

  final Icon icon1;
  final Icon icon2;
  CallsItem(this.avatarUrl, this.name, this.icon1, this.space, this.icon2);
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var tarih = DateFormat.yMMMEd().format(now);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(avatarUrl),
          radius: 30,
        ),
        title: Column(
          children: [
            Row(
              children: [
                Text("$name"),
                SizedBox(
                  width: space,
                ),
                IconButton(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: icon2,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                icon1,
                Text(
                  "$tarih",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
