import 'package:flutter/material.dart';
import 'package:mywhatsapp/widgets/info.dart';

class Contectlist extends StatelessWidget {
  const Contectlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text(info[index]['name'].toString()),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(info[index]['message'].toString()),
                      ),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString())),
                      trailing: Text(info[index]['time'].toString()),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(
            indent: 85.0,
          )
        ],
      ),
    );
  }
}
