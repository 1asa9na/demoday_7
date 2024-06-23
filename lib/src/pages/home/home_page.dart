import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/features/input_parameters/input_parameters_widget.dart';
import 'package:demoday_7/src/features/select_file/select_file_widget.dart';
import 'package:demoday_7/src/features/select_options/select_options_widget.dart';
import 'package:demoday_7/src/themes/app_strings.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  static const String path = '';
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgetsList = [
    const SelectOptionsWidget(),
    const SelectFileWidget(),
    const InputParametersWidget(),
  ];

  @override
  Widget build(BuildContext context) {
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
              child: ListView.separated(
                itemCount: widgetsList.length,
                itemBuilder: (context, index) => widgetsList[index],
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
