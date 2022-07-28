import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:permission_handler/permission_handler.dart';

import '../configs/GetButtonNavigatBar.config.dart';
import '../configs/configs.dart';

class Qiblat extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Qiblat> {
  bool _hasPermissions = false;

  @override
  void initState() {
    super.initState();

    _fetchPermissionStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff003D34),
      appBar: getAppBar(),
      body: Builder(builder: (context) {
        Permission.locationWhenInUse.request().then((ignored) {
          _fetchPermissionStatus();
        });
        return Column(
          children: <Widget>[
            getFront('h'),
            Expanded(child: _buildCompass()),
          ],
        );
      }),
      bottomNavigationBar: GetButtonNavigatBar(context),
    );
  }

  Widget _buildCompass() {
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text(
              "هاتفكم لا يتوفر على خاصية المستشعر",
              style: TextStyle(color: Colors.red),
            )),
          );
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data!.heading;

        // if direction is null, then device does not support this sensor
        // show error message
        if (direction == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text(
              "هاتفكم لا يتوفر على خاصية المستشعر",
              style: TextStyle(color: Colors.red),
            )),
          );
          return Center(
            child: Text("Device does not have sensors !"),
          );
        }

        return Material(
          shape: CircleBorder(),
          clipBehavior: Clip.antiAlias,
          color: Colors.transparent,
          elevation: 4.0,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff003D34),
              shape: BoxShape.circle,
            ),
            child: Transform.rotate(
              angle: (direction * (math.pi / 180) * -1),
              child: Image.asset('images/compass.png'),
            ),
          ),
        );
      },
    );
  }

  void _fetchPermissionStatus() {
    Permission.locationWhenInUse.status.then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }
}
