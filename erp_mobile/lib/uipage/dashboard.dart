import 'package:flutter/material.dart';

import 'drawer.dart';
import 'maindashboard.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[300],
        drawer: MainDrawer(),
        body: DashboardPage());
  }
}
