import 'package:circle_flags/circle_flags.dart';
import 'package:example/country.dart';
import 'package:flutter/material.dart';

import 'countries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('flags'),
          ),
          // child: CircleFlag(
          //   'be',
          //   size: 25,
          // ),
          body: ListView(
            children: <Widget>[
              for (Country country in countries)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleFlag(
                      country.countryCode,
                      size: 32,
                    ),
                    title: Text(country.name),
                  ),
                )
            ],
          ),
        ),
      );
}
