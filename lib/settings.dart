import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsOnePage extends StatelessWidget {
  static final String Path = "lib/src/pages/settings1.dart";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.orange,
                child: ListTile(
                  title: Text(
                    "Type name ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(''),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Card(
                elevation: 4.0,
                margin: const EdgeInsets.fromLTRB(
                  32.0,
                  8.0,
                  32.0,
                  16.0,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                        leading: const Icon(
                          Icons.lock_outline,
                          color: Colors.orange,
                        ),
                        title: const Text("Change Passwords"),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {}),
                    _buildDivider(),
                    ListTile(
                        leading: Icon(
                          FontAwesomeIcons.language,
                          color: Colors.orange,
                        ),
                        title: const Text("Change Language"),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {}),
                    ListTile(
                        leading: const Icon(
                          Icons.location_on,
                          color: Colors.orange,
                        ),
                        title: const Text("Change Location"),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {}),
                    ListTile(
                      leading: const Icon(
                        Icons.location_on,
                        color: Colors.orange,
                      ),
                      title: const Text("Change Location"),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SwitchListTile(
                  dense: true,
                  activeColor: Colors.orange,
                  value: true,
                  title: const Text("Recieved Notification"),
                  onChanged: (val) {}),
              SwitchListTile(
                  dense: true,
                  activeColor: Colors.orange,
                  value: false,
                  title: const Text("Recieved Newsletter"),
                  onChanged: (val) {}),
              SwitchListTile(
                  dense: true,
                  activeColor: Colors.orange,
                  value: true,
                  title: const Text("Recieved Offer Notification"),
                  onChanged: (val) {}),
              SwitchListTile(
                dense: true,
                activeColor: Colors.orange,
                value: true,
                title: const Text("Recieved App Updates"),
                onChanged: null,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
