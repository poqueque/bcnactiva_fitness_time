import 'package:flutter/material.dart';
import 'package:prova1/screens/new_activity.dart';
import 'package:prova1/styles/app_styles.dart';
import 'package:prova1/widgets/activity_card.dart';

import '../models/activity.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Activity> activities = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Time"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Activitats",
              style: AppStyles.largeTitle,
            ),
            if (activities.isEmpty)
              const Padding(
                padding: EdgeInsets.all(80.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.run_circle_outlined,
                      size: 120,
                      color: Colors.black45,
                    ),
                    Text(
                      "No hi ha activitats. Pulsa + per afegir-ne.",
                      style: AppStyles.subTitle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            for (var activity in activities) ActivityCard(activity: activity),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var activity = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewActivity()));
          activities.add(activity);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
