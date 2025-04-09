import 'package:demoday_7/src/features/select_options/bloc/select_options_bloc.dart';
import 'package:demoday_7/src/core/presentation/pages/service/bloc/service_bloc.dart'
    as service;
import 'package:demoday_7/src/core/data/models/service_model/service_model.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SelectOptionsWidget extends StatefulWidget {
  const SelectOptionsWidget({super.key});

  @override
  State<StatefulWidget> createState() => SelectOptionsWidgetState();
}

class SelectOptionsWidgetState extends State<SelectOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectOptionsBloc, SelectOptionsState>(
      builder: (context, state) {
        return switch (state) {
          Success(:final options) => ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.determineViewHeadline,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppStrings.determineViewSubline,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: options
                              .map(
                                (i) => OutlinedButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      context
                                          .read<ServiceModel>()
                                          .changeOption(i.option);
                                    });
                                    var provider = Provider.of<ServiceModel>(
                                        context,
                                        listen: false);
                                    context.read<service.ServiceBloc>().add(
                                          service.ServiceEvent.started(
                                            picture: provider
                                                .getOptionCount('picture'),
                                            numeric: provider
                                                .getOptionCount('numeric'),
                                          ),
                                        );
                                  },
                                  style: context
                                          .watch<ServiceModel>()
                                          .getOption(i.option)
                                      ? activeSecondaryOutlinedButtonStyle
                                      : normalSecondaryOutlinedButtonStyle,
                                  icon: const Icon(Icons.add),
                                  label: Text(i.name),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Loading() => const Center(child: CircularProgressIndicator()),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
