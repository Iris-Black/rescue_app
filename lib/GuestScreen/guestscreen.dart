import 'package:app/functions.dart';
import 'package:flutter/material.dart';
import 'listbuttonItem.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

initstate() {}

class GuestScreen extends StatefulWidget {
  GuestScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  late List data;
  List imagesUrl = [];

  List planURLs = [
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.hdnicewallpapers.com%2FWalls%2FBig%2FCat%2FFree_Download_Image_of_Cat.jpg&f=1&nofb=1',
    'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.hdwallpaper.nu%2Fwp-content%2Fuploads%2F2015%2F02%2FFunny-Cat-Hidden-1024x768.jpg&f=1&nofb=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.hdnicewallpapers.com%2FWalls%2FBig%2FCat%2FAnimal_Cat_Roaring_Image.jpg&f=1&nofb=1'
  ];

  int floor = 0;

  Future<String> fetchDataFromApi(String uri) async {
    var jsonData = await http.get(Uri.parse(uri));
    var fetchData = jsonDecode(jsonData.body);

    setState(() {
      data = fetchData;
      data.forEach((element) {
        imagesUrl.add(element['url']);
      });
    });

    return "Success";
  }

  displayImage(String url) {
    return Image.network(url);
  }

  final isSelected = <bool>[true, false, false];

  @override
  Widget build(BuildContext context) {
    print(isSelected);
    int current_page = whichPage(isSelected);
    setValue(int value, int value_to_set) {
      value_to_set = value;
      return;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(),
          ),
        ),
        body: Container(
          //background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ToggleButtons(
                    isSelected: isSelected,
                    children: [
                      createListButtonItem('1'),
                      createListButtonItem('2'),
                      createListButtonItem('3')
                    ],
                    onPressed: (int index) {
                      setState(() {
                        isSelected[index] = !isSelected[index];
                        for (int buttonindex = 0;
                            buttonindex < isSelected.length;
                            buttonindex++) {
                          if (buttonindex == index) {
                            isSelected[buttonindex] = true;
                          } else {
                            isSelected[buttonindex] = false;
                          }
                        }
                      });
                    },
                  ),
                ),
                Container(
                  child: displayImage(planURLs[current_page]),
                ),
              ],
            ),
          ),
        ));
  }
}
