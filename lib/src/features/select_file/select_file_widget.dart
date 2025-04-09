import 'dart:convert';
import 'package:demoday_7/src/features/get_results/bloc/get_results_bloc.dart'
    as getresults;
import 'package:demoday_7/src/features/select_file/bloc/select_file_bloc.dart';
import 'package:demoday_7/src/core/data/models/service_model/service_model.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectFileWidget extends StatefulWidget {
  const SelectFileWidget({super.key});

  @override
  State<StatefulWidget> createState() => SelectFileWidgetState();
}

class SelectFileWidgetState extends State<SelectFileWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectFileBloc, SelectFileState>(
      builder: (context, state) {
        return switch (state) {
          NoImageSelected() => ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: OutlinedButton(
                    onPressed: () => BlocProvider.of<SelectFileBloc>(context)
                        .add(const SelectFileEvent.pickImage()),
                    style: normalSecondaryOutlinedButtonStyle,
                    child: const Text(AppStrings.pickImage),
                  ),
                ),
              ),
            ),
          Success(:final pickedImageBytes) => ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Image.memory(
                      pickedImageBytes,
                      height: 300,
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {
                        BlocProvider.of<SelectFileBloc>(context)
                            .add(const SelectFileEvent.pickImage());
                        BlocProvider.of<getresults.GetResultsBloc>(context)
                            .add(const getresults.GetResultsEvent.started());
                      },
                      style: appBarOutlinedButtonStyle,
                      child: const Text(AppStrings.pickNewImage),
                    ),
                  ],
                ),
              ),
            ),
          Loading() => const Center(
              child: CircularProgressIndicator(),
            ),
          _ => const SizedBox.shrink(),
        };
      },
      listener: (context, state) {
        switch (state) {
          case Success(:final pickedImageBytes):
            {
              context.read<ServiceModel>().setParameter(
                  'img', base64Encode(pickedImageBytes), 'String');
            }
          default:
            null;
        }
      },
    );
  }
}
