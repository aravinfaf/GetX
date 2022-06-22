import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWigdet extends StatefulWidget {
  @override
  _DialogWigdetState createState() => _DialogWigdetState();
}

class _DialogWigdetState extends State<DialogWigdet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                // Default dialog
//                Get.defaultDialog();
                // custom dialog
                Get.defaultDialog(
                    title: "Dialog title",
                    titleStyle: TextStyle(fontSize: 20),
                    middleText: "Dialog middle text",
                    middleTextStyle: TextStyle(fontSize: 15),
                    backgroundColor: Colors.grey,

                    //To customize middle text use content
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Loading..")
                      ],
                    ),
                    textCancel: "Cancel",
                    cancelTextColor: Colors.white,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    onCancel: () {
                      Get.snackbar("Cancelled", "Yes, Cancelled");
                    },
                    onConfirm: () {
                      Get.snackbar("Confirmed", "Yes, Confirmed");
                    },

                    // To customize cancel and confirm buttons
                    cancel: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 15),
                    ),
                    confirm: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 20),
                    ),
                    actions: [
                      RaisedButton(
                          child: Text("Action 1"),
                          onPressed: () {
                            Get.back();
                          }),
                      RaisedButton(
                          child: Text("Action 2"),
                          onPressed: () {
                            Get.back();
                          }),
                    ],
                    barrierDismissible: false);
              },
              child: Text("Dialog"),
            )
          ],
        ),
      ),
    );
  }
}
