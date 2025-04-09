import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/features/get_results/get_results_widget.dart';
import 'package:demoday_7/src/features/input_parameters/input_parameters_widget.dart';
import 'package:demoday_7/src/features/select_file/select_file_widget.dart';
import 'package:demoday_7/src/features/select_options/select_options_widget.dart';
import 'package:demoday_7/src/core/presentation/pages/service/bloc/service_bloc.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ServicePage extends StatefulWidget {
  static const String path = '';
  const ServicePage({super.key});

  @override
  State<StatefulWidget> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  List<Widget> widgetsList = [
    const SelectOptionsWidget(),
    const SelectFileWidget(),
    const InputParametersWidget(),
    const GetResultsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceBloc, ServiceState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 204, vertical: 20),
            child: Column(
              children: [
                Text(
                  AppStrings.headline,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      widgetsList[0],
                      const SizedBox(height: 20),
                      if (state.picture > 0) ...[
                        widgetsList[1],
                        const SizedBox(height: 20),
                      ],
                      if (state.numeric > 0) ...[
                        widgetsList[2],
                        const SizedBox(height: 20),
                      ],
                      widgetsList[3],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
