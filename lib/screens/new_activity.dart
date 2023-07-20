import 'package:flutter/material.dart';

import '../models/activity.dart';

class NewActivity extends StatefulWidget {
  const NewActivity({super.key});

  @override
  State<NewActivity> createState() => _NewActivityState();
}

class _NewActivityState extends State<NewActivity> {
  TextEditingController activityController = TextEditingController();
  TextEditingController distanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Nova activitat"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: activityController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Tipus d\'activitat',
                ),
              ),
              TextField(
                controller: distanceController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Distància',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  var activityType = activityController.text;
                  var distance = distanceController.text;
                  var activity = Activity(
                    type: activityType,
                    date: DateTime.now(),
                    distance: double.tryParse(distance) ?? 0,
                  );
                  Navigator.pop(
                    context,
                    activity,
                  );
                },
                child: const Text("Afegeix Activitat"),
              )
            ],
          ),
        ));
  }
}
