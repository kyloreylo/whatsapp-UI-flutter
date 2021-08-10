import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String message;
  final double space;
  final double dateSpace;
  final String mesajSayisi;
  ChatItem(this.avatarUrl, this.name, this.message, this.space, this.dateSpace,
      this.mesajSayisi);

  @override
  Widget build(BuildContext context) {
    var saat = TimeOfDay.now().hour;
    var dak = TimeOfDay.now().minute;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 5,
        ),
        child: ListTile(
          subtitle: Row(
            children: [
              Text("$message \t"),
              Icon(
                Icons.done_all_outlined,
                color: Colors.blue,
              ),
              SizedBox(
                width: space,
              ),
              CircleAvatar(
                radius: 13,
                backgroundColor: Color.fromRGBO(58, 148, 138, 1),
                child: Text(
                  mesajSayisi,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(avatarUrl),
            radius: 30,
          ),
          title: Row(
            children: [
              Text("$name"),
              SizedBox(
                width: dateSpace,
              ),
              Text(
                saat.toString() + "." + dak.toString(),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
