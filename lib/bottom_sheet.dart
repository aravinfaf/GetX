import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            Get.bottomSheet(Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                    title: Text("Light Theme"),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                    },
                  ),
                  ListTile(
                    title: Text("Dark Theme"),
                    onTap: () {
                      print("object");
                      Get.changeTheme(ThemeData.dark());
                    },
                  ),
                ],
              ),
            ));
          },
          child: Text(
            "Bottom Shett",
            style: TextStyle(backgroundColor: Colors.blueGrey),
          ),
        ),
      ],
    );
  }
}
