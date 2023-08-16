import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smeconnect/practicewidgets/list_view_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: const Text(
          'Paladis',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.teal), ),
                onPressed: () {
                  getAllData(context);
                },
                child: const Text('Getdata')),
            // Container(
            //   margin: const EdgeInsets.all(8),
            //   decoration: const BoxDecoration(
            //     boxShadow: [BoxShadow(blurRadius: 4)],
            //     color: Colors.red,
            //   ),
            //   child: const Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: Column(
            //             // mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text('Application ID'),
            //               Text('Company Name'),
            //               Text('Requester')
            //             ],
            //           ),
            //         ),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.end,
            //           children: [Text('Submission Date'), Text('Status')],
            //         )
            //       ]),
            // )
          ],
        ),
      ),
    );
  }

  Future<void> getAllData(context) async {
    const email = "sb@yopmail.com";
    // const url =
    //     "https://cs-ob-dev-api.azurewebsites.net/api/OnboardProcess/GetAllOnProcessRequests";
      const url =  "https://cs-ob-dev-api.azurewebsites.net/api/OnboardProcess/GetAllOnProcessRequests?page=0&size=10";
    final res = await http.get(Uri.parse(url));

    final dataRes = jsonDecode(res.body);
    final data =dataRes['results'];
    print(res.body);
    if (res.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: ((context) => ListApiWidget(data: data))),
      );
    }
  }
}
