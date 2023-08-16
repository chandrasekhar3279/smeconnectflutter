import 'package:flutter/material.dart';
import 'package:smeconnect/features/home_features/ui/home_ui.dart';
import 'package:smeconnect/maps/maps_home_screen.dart';
import 'package:smeconnect/maps/simple_map.dart';
import 'package:smeconnect/practicewidgets/stepper_widget.dart';

import 'practicewidgets/data_table_widget.dart';
import 'practicewidgets/fitted_box.dart';
import 'practicewidgets/get_all_data.dart';
import 'practicewidgets/search_bar.widget.dart';
// import 'package:smeconnect/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'SME CONNECT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home:const ListViewWidget(),
    );
  }
}
