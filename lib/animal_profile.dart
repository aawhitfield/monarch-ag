import 'package:flutter/material.dart';

import 'Home.dart';

class AnimalProfile extends StatefulWidget {
  const AnimalProfile({super.key});
  _AnimalProfileState createState() => _AnimalProfileState();
}

class _AnimalProfileState extends State<AnimalProfile> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  String animalType = 'Goat';
  String animalName = 'Animal Name';
  bool showName = true;

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              showName = !showName;
            });
            if (animalName != 'Animal Name') {
              nameController.text = animalName;
            }
          },
          child: (showName)
              ? Text(
                  animalName,
                  style: optionStyle,
                )
              : Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 8.5, bottom: 8.5),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (String value) {
                      animalName = value;
                    },
                  ),
                ),
        ),
        Column(
          children: [
            Text('Date'),
            Text(
                '${DateTime.now().month.toString()}/${DateTime.now().day.toString()}/${DateTime.now().year.toString()}'),
            Text('Type of Animal'),
            DropdownButton(
              value: animalType,
              items: const [
                DropdownMenuItem(child: Text("Goat"), value: "Goat"),
                DropdownMenuItem(child: Text("Lamb"), value: "Lamb"),
                DropdownMenuItem(child: Text("Pig"), value: "Pig"),
                DropdownMenuItem(child: Text("Cattle"), value: "Cattle"),
                DropdownMenuItem(child: Text("Rabbit"), value: "Rabbit"),
                DropdownMenuItem(child: Text("Turkey"), value: "Turkey"),
              ],
              onChanged: (item) {
                setState(() {
                  if (item != null) {
                    animalType = item;
                  }
                });
              },
            ),
            Text('Current Weight'),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 8.5, bottom: 8.5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text('Amount of Feed'),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 8.5, bottom: 8.5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text('Description'),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 8.5, bottom: 8.5),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
