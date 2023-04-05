import 'package:count/homeScreenVm.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:count/HomeScreenModel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class homeScreen extends StatelessWidget {
  homeScreen({super.key});

  final homeScreenVm _homeScrenVm = homeScreenVm();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Application"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) {
              //Create a text widget and consume counter from the  model to show the text
              return Text(_homeScrenVm.counter.toString());
            }),
            ElevatedButton(
                onPressed: _homeScrenVm.updateCounter,
                child: Text("Click Add")),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
                onPressed: _homeScrenVm.Subract, child: Text("Click Subract")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _homeScrenVm.updateCounter,
        child: const Icon(
          Icons.nature_people_outlined,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
