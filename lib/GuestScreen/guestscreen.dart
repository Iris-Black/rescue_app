import 'package:app/functions.dart';
import 'package:flutter/material.dart';
import 'listbuttonItem.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

initstate() {}

testFunction() {
  print("working");
}

String duyuru =
    "Deprem oluyor. Lütfen sakin kalın ve haritada gösterilen en yakın çıkışa gidin.";

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
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.wallpaperscraft.com%2Fimage%2Fcat_kitten_glance_177552_1600x900.jpg&f=1&nofb=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.hdnicewallpapers.com%2FWalls%2FBig%2FCat%2FAnimal_Cat_Roaring_Image.jpg&f=1&nofb=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.wallpaperscraft.com%2Fimage%2Fcat_cute_pet_163065_2560x1440.jpg&f=1&nofb=1'
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

  final isSelected = <bool>[true, false, false, false];

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
          title: Center(
            child: Text(
              widget.title,
            ),
          ),
        ),
        body: Container(
          color: Color(0xff1d1d1d),
          //background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ToggleButtons(
                    borderRadius: BorderRadius.circular(4.0),
                    borderWidth: 2,
                    borderColor: Colors.orange,
                    selectedBorderColor: Colors.orange,
                    selectedColor: Colors.orange.withOpacity(1),
                    isSelected: isSelected,
                    fillColor: Colors.orangeAccent.withOpacity(0.5),
                    splashColor: Colors.orangeAccent.withOpacity(0.4),
                    hoverColor: Colors.orangeAccent.withOpacity(0.04),
                    children: [
                      createListButtonItem('1'),
                      createListButtonItem('2'),
                      createListButtonItem('3'),
                      createListButtonItem('4')
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
                  height: 240,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffb96300),
                        width: 4,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(planURLs[current_page]),
                        fit: BoxFit.fitHeight,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.only(top: 10),
                  margin: const EdgeInsets.all(10),
                  //child: displayImage(planURLs[current_page]),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Color(0xffb96300), width: 8),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        duyuru,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 150,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: testFunction(),
                                  child: Text(
                                    'Güvendeyim.',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0.2),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors.green;
                                        return Color(
                                            0xffff9b00); // Use the component's default.
                                      },
                                    ),
                                  ),
                                )),
                            SizedBox(
                                height: 150,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: testFunction(),
                                  child: Text(
                                    'Tahliye edilmeyi bekliyorum.',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0.2),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors.green;
                                        return Color(
                                            0xffba2e00); // Use the component's default.
                                      },
                                    ),
                                  ),
                                )),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
