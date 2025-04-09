import 'package:demoday_7/src/features/get_results/bloc/get_results_bloc.dart';
import 'package:demoday_7/src/core/data/models/service_model/service_model.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:demoday_7/src/utils/themes/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class GetResultsWidget extends StatefulWidget {
  const GetResultsWidget({super.key});

  @override
  State<StatefulWidget> createState() => GetResultsWidgetState();
}

class GetResultsWidgetState extends State<GetResultsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetResultsBloc, GetResultsState>(
      builder: (context, state) {
        return switch (state) {
          Success(:final responses) => ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          responses.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...List.generate(
                                  responses[index].option_response.length,
                                  (indexOption) => Row(
                                    children: [
                                      Text(
                                        "${responses[index].option_response[indexOption].name}:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        responses[index]
                                            .option_response[indexOption]
                                            .result,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: OutlinedButton(
                        onPressed: () =>
                            BlocProvider.of<GetResultsBloc>(context).add(
                          GetResultsEvent.post(
                            data: Provider.of<ServiceModel>(context,
                                    listen: false)
                                .getParameters(),
                            options: Provider.of<ServiceModel>(context,
                                    listen: false)
                                .getOptions(),
                          ),
                        ),
                        style: normalSecondaryOutlinedButtonStyle,
                        child: const Text(AppStrings.getResults),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Loading() => const ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          _ => ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: OutlinedButton(
                    onPressed: () =>
                        BlocProvider.of<GetResultsBloc>(context).add(
                      GetResultsEvent.post(
                        data: Provider.of<ServiceModel>(context, listen: false)
                            .getParameters(),
                        options:
                            Provider.of<ServiceModel>(context, listen: false)
                                .getOptions(),
                      ),
                    ),
                    style: normalSecondaryOutlinedButtonStyle,
                    child: const Text(AppStrings.getResults),
                  ),
                ),
              ),
            ),
        };
      },
      listener: (context, state) {
        switch (state) {
          case Error(:final message):
            Common.showSnackBar(context, message);
          default:
            null;
        }
      },
    );
  }
}
