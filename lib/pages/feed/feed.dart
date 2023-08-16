import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Feed'),
          ),
          body:const Column(
            children: [
              TabBar(
                tabs: [
                  Tab(child: Text('Feed',textAlign: TextAlign.center,),),
                  Tab(child:Text('My Content',textAlign: TextAlign.center,))
                ],
                labelColor: Colors.blue,
              labelStyle: TextStyle(),
              ),
              Expanded(child: 
              TabBarView(children: 
              [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Feed'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('My Content'),
                    ],
                  ),
                )
          
              ],))
            ],
          ),
        ));
  }
}
