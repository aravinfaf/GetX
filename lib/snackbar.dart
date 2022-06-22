import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarWidget extends StatefulWidget {
  @override
  _SnackBarWidgetState createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title", "Snackbar description",
                  snackPosition: SnackPosition.BOTTOM,
                  isDismissible: true,
                  //Overrides
                  messageText: Text("Description"),
                  titleText: Text("Title"),
                  //animationDuration: Duration(milliseconds: 5),
                  borderRadius: 5,
                  borderColor: Colors.black,
                  borderWidth: 2,
                  icon: Icon(
                    Icons.send_outlined,
                    color: Colors.grey,
                  ),
                  mainButton: TextButton(
                      onPressed: () {
                        print("on pressed");
                      },
                      child: Text("Retry")),
                  showProgressIndicator: true,
                  // userInputForm: Form(
                  //     child: Row(
                  //   children: [TextField()],
                  // )
                  // )
                );
              },
              textColor: Colors.black,
              child: Text("Show snackbar"),
            )
          ],
        ),
      ),
    );
  }
}
