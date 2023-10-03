import 'package:flutter/material.dart';

class StepperService extends StatelessWidget {
  const StepperService({super.key});

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      const Step(
          title: Text("التشخيص المبدئي"),
          content: Text("التشخيص المبدئي"),
          isActive: true,
          state: StepState.complete),
      const Step(
          title: Text("تحديد العطل"),
          content: Text("تحديد العطل"),
          isActive: true,
          state: StepState.complete),
      const Step(
        title: Text("تحت الصيانة "),
        content: Text("تحت الصيانة "),
        isActive: false,
      ),
      const Step(
        title: Text("استلام السيارة "),
        isActive: false,
        content: Text("استلام السيارة "),
      )
    ];
    return Stepper(
      steps: steps,
      currentStep: 2,
      elevation: 1,
    );
  }
}
