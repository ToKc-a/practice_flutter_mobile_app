import 'package:flutter/material.dart';

class ExpandedDemoScreen extends StatelessWidget {
  const ExpandedDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                      child: Text(
                    "Очень очень очень очень очень очень очень очень очень длинный текст",
                    style: TextStyle(fontSize: 18),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Регистрация")))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
