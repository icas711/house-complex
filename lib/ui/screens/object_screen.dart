import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:housing_complex_objects/bloc/housing_complex_bloc.dart';
import 'package:housing_complex_objects/repo/housing_complex_repo.dart';
import 'package:housing_complex_objects/ui/widgets/view_data_widget.dart';

class ObjectsScreen extends StatelessWidget {
  final repository = HousingComplexRepo();

  ObjectsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HousingComplexBloc(housingComplexRepo: repository),
        child: const DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: ViewDataWidget()),
      ),
    );
  }


}
