import 'package:flutter/material.dart';
import 'package:prova1/styles/app_styles.dart';

import '../widgets/data_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/women/44.jpg",
                ),
              ),
            ),
            const Text(
              'Antònia Font',
              style: AppStyles.largeTitle,
            ),
            const Text(
              'registered 20 April 2023',
              style: AppStyles.subTitle,
            ),
            const SizedBox(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DataCard(
                    iconData: Icons.access_alarm,
                    label: "Time",
                    value: "2h 45'"),
                DataCard(iconData: Icons.place, label: "Km", value: "2h 45'"),
                DataCard(
                    iconData: Icons.directions_run,
                    label: "Activities",
                    value: "42"),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Height"),
                Slider(
                  min: 100,
                  max: 250,
                  value: 150,
                  activeColor: AppStyles.heliotrope,
                  onChanged: (value) {},
                ),
                const Text("150 cm"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Weight"),
                Slider(
                  min: 40,
                  max: 100,
                  value: 55,
                  activeColor: AppStyles.heliotrope,
                  onChanged: (value) {},
                ),
                const Text("55 kg"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
