import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;

//  Widget controlsBuilder(conext,details){
//   return Row(
//     children: [
//       ElevatedButton(
//         onPressed: details.onStepContinue, 
//         child: Text('Next'),
//         ),
//         SizedBox(width:20),
//         OutlinedButton(onPressed: details.onStepCancel, child: Text('Cancel'))
       

//     ],
//   );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper Widget'),
      ),
      body: Stepper(
        // stepIconBuilder:(stepIndex, stepState) {
        //   return Container(
        //      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.green),
        //   );
        // },
        // elevation: 0,
        type: StepperType.horizontal,
        // controlsBuilder: controlsBuilder,
        steps: [
          Step(title: Text('Step-1'), content: Text('Step -1 Information'),isActive: _currentStep >= 0 ,
           state: _currentStep >= 0 ? StepState.complete :StepState.disabled
           ),
          Step(title: Text('Step-2'), content: Text('Step -2 Information'),isActive: _currentStep >= 1,
          state: _currentStep >= 1 ? StepState.complete:StepState.disabled
          ),
          Step(title: Text('Step-3'), content: Text('Step -3 Information'),isActive: _currentStep >= 2,
          state: _currentStep >= 2 ? StepState.complete:StepState.disabled
          ),
        ],
        onStepTapped: (int newIndex) {
          setState(() {
            _currentStep = newIndex;
          });
        },
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep != 2) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if(_currentStep !=0){
            setState(() {
              _currentStep -= 1;
            });
          }
        },
      ),
    );
  }
}
