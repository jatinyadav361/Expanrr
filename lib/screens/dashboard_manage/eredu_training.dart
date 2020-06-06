import 'package:flutter/material.dart';

class EREDUTraining extends StatefulWidget {
  @override
  _EREDUTrainingState createState() => _EREDUTrainingState();
}

class _EREDUTrainingState extends State<EREDUTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EREDU Training Programs'),
      ),
      body: ListView(
        children: [
          Text('eredu training'),
        ],
      ),
    );
  }
}
