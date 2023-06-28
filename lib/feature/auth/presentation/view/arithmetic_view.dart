import 'package:flutter/material.dart';
import 'package:flutter_arithmetic_classwork/feature/auth/data/model/arithmetic.dart';

import '../../../../../config/router/app_route.dart';

class ArithView extends StatefulWidget {
  const ArithView({Key? key}) : super(key: key);

  @override
  _ArithViewState createState() => _ArithViewState();
}

class _ArithViewState extends State<ArithView> {
  final _gap = const SizedBox(height: 8);

  final _key = GlobalKey<FormState>();
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();
  Arithmetic? _arithmetic; // Add an instance of the Arithmetic class

  @override
  void initState() {
    super.initState();
    _arithmetic = Arithmetic(); // Initialize the Arithmetic class instance
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arith'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    controller: _firstController,
                    decoration: const InputDecoration(
                      labelText: 'First No',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter first no';
                      }
                      return null;
                    }),
                  ),
                  _gap,
                  TextFormField(
                    controller: _secondController,
                    decoration: const InputDecoration(
                      labelText: 'Second No',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter second no';
                      }
                      return null;
                    }),
                  ),
                  _gap,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _arithmetic!.first =
                              int.parse(_firstController.text.trim());
                          _arithmetic!.second =
                              int.parse(_secondController.text.trim());
                          int sum = _arithmetic!.add();
                          Navigator.pushNamed(context, AppRoute.resultRoute,
                              arguments: sum);
                        }
                      },
                      child: const Text('Add'),
                    ),
                  ),
                  _gap,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _arithmetic!.first =
                              int.parse(_firstController.text.trim());
                          _arithmetic!.second =
                              int.parse(_secondController.text.trim());
                          int difference = _arithmetic!.sub();
                          Navigator.pushNamed(context, AppRoute.resultRoute,
                              arguments: difference);
                        }
                      },
                      child: const Text('Subtract'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _arithmetic!.first =
                              int.parse(_firstController.text.trim());
                          _arithmetic!.second =
                              int.parse(_secondController.text.trim());
                          int product = _arithmetic!.mul();
                          Navigator.pushNamed(context, AppRoute.resultRoute,
                              arguments: product);
                        }
                      },
                      child: const Text('Multiply'),
                      
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _arithmetic!.first =
                              int.parse(_firstController.text.trim());
                          _arithmetic!.second =
                              int.parse(_secondController.text.trim());
                          int product = _arithmetic!.div();
                          Navigator.pushNamed(context, AppRoute.resultRoute,
                              arguments: product);
                        }
                      },
                      child: const Text('Divide'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
