import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 150,
                              child: ClipOval(
                                child: Image.network(
                                  'https://wallpaperaccess.com/full/2039268.jpg',
                                  fit: BoxFit.cover,
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Hardin Scott',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Padding(
                                      padding: EdgeInsets.only(left: 190),
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            manageList(
                              icon: const Icon(
                                Icons.person,
                                color: Colors.red,
                              ),
                              text: 'Account',
                            ),
                            manageList(
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.blue,
                              ),
                              text: 'Notifications',
                            ),
                            manageList(
                              icon: const Icon(
                                Icons.help,
                                color: Colors.yellow,
                              ),
                              text: 'Help & Legal',
                            ),
                            manageList(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.greenAccent,
                              ),
                              text: 'Tell a Friend',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}

Widget manageList({Icon? icon, String? text}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListTile(
      onTap: () {},
      selected: true,
      selectedTileColor: Colors.white,
      leading: icon,
      title: Text(
        text!,
        style: const TextStyle(color: Colors.black),
      ),
    ),
  );
}
