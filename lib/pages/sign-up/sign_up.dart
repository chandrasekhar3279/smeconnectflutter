import 'package:flutter/material.dart';
import 'package:smeconnect/components/custom_input.dart';
import 'package:smeconnect/pages/log_in/log_in.dart';

const List<String> list = <String>['Apple', 'Banana', 'Orange'];

class SignUp extends StatefulWidget {
  SignUp({required this.selectedValue, super.key});

  String selectedValue;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
     bool isChecked = false;

    String dropDownValue = list.first;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign-Up'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
          child: Column(children: [
            // SizedBox(height: 30),
            const Text('Please give us few details about yur business'),
            const SizedBox(height: 20),
            const Text(
              'Join us & connect with a large network of Enterprenurs around you',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Personal Detials',
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  child: Text(
                    'Company Details',
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  child: Text(
                    'Additional Information',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
              labelColor: Colors.blue,
              labelStyle: TextStyle(),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const Padding(
                    // padding: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          CustomInput(
                            labelText: 'First Name',
                            hintText: 'Enter firstname',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          CustomInput(
                            labelText: 'Last Name',
                            hintText: 'Enter lasttname',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          CustomInput(
                            labelText: 'Email',
                            hintText: 'Enter email',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          CustomInput(
                            labelText: 'Position/title',
                            hintText: 'Enter your position here',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          CustomInput(
                            labelText: 'Password',
                            hintText: 'Enter your password',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          CustomInput(
                            labelText: 'Confirm Password',
                            hintText: 'Re-enter your password',
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          // Text(
                          //   'Personal details',
                          //   style: TextStyle(color: Colors.blue),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          const CustomInput(
                            labelText: 'Company Name',
                            hintText: 'Enter Companyname',
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: width,
                            child: DropdownButtonFormField<String>(
                              // focusColor: Colors.red,
                              // dropdownColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        const BorderSide(color: Colors.black)),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),

                              isExpanded: true,
                              value: dropDownValue,
                              onChanged: (String? value) {
                                setState(() {
                                  dropDownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const CustomInput(
                            labelText: 'BRN Number',
                            hintText: 'Business Registration Number (BRN)',
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const CustomInput(
                            labelText: 'Trade License Number',
                            hintText: 'Trade License Number',
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: width,
                            child: DropdownButtonFormField<String>(
                              // focusColor: Colors.red,
                              // dropdownColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        const BorderSide(color: Colors.black)),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                              // elevation: 50,
                              // style: DropdownButton( ),
                              isExpanded: true,
                              value: dropDownValue,
                              onChanged: (String? value) {
                                setState(() {
                                  dropDownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          const CustomInput(
                            labelText:
                                'Are you a Businees Banking Customer of our Bank ?',
                            hintText: 'Yes/No',
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: width,
                            child: DropdownButtonFormField<String>(
                              // focusColor: Colors.red,
                              // dropdownColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide:
                                        const BorderSide(color: Colors.black)),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                              ),
                              // elevation: 50,
                              // style: DropdownButton( ),
                              isExpanded: true,
                              value: dropDownValue,
                              onChanged: (String? value) {
                                setState(() {
                                  dropDownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (newValue) {
                                    setState(() {
                                      isChecked = newValue!;
                                    });
                                  }),
                             const Text('Accept Terms of use and Privacy Policy')
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 50,
                            width: width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Sign-Up',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already Have an account ?  '),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => const LogIn()),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'LogIn',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
