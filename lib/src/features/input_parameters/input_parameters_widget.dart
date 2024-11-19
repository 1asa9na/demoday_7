import 'package:demoday_7/src/features/input_parameters/bloc/input_parameters_bloc.dart';
import 'package:demoday_7/src/pages/home/model/home_model.dart';
import 'package:demoday_7/src/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class InputParametersWidget extends StatefulWidget {
  const InputParametersWidget({super.key});

  @override
  State<StatefulWidget> createState() => InputParametersWidgetState();
}

class InputParametersWidgetState extends State<InputParametersWidget> {
  List<TextInputFormatter>? chooseInputFormatter(String type) {
    return switch (type) {
      'double' => [
          FilteringTextInputFormatter.allow(RegExp(r"^[0-9]*\.?[0-9]{0,2}$")),
          TextInputFormatter.withFunction((oldValue, newValue) {
            final text = newValue.text;
            return text.isEmpty
                ? newValue
                : double.tryParse(text) == null
                    ? oldValue
                    : newValue;
          }),
        ],
      'int' => [
          FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
          TextInputFormatter.withFunction((oldValue, newValue) {
            final text = newValue.text;
            return text.isEmpty
                ? newValue
                : int.tryParse(text) == null
                    ? oldValue
                    : newValue;
          }),
        ],
      'bool' => [
          FilteringTextInputFormatter.allow(RegExp(r"[0-1]")),
          TextInputFormatter.withFunction((oldValue, newValue) {
            final text = newValue.text;
            return text.isEmpty
                ? newValue
                : text == '0' || text == '1'
                    ? newValue
                    : oldValue;
          }),
        ],
      _ => null,
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputParametersBloc, InputParametersState>(
      builder: (context, state) {
        return switch (state) {
          Success(:final parameters) => ColoredBox(
              color: AppColors.lightGray,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: parameters
                        .map(
                          (i) => IntrinsicWidth(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(minWidth: 100),
                              child: Builder(
                                builder: (context) {
                                  return switch (i.type) {
                                    'double' || 'int' => TextField(
                                        onChanged: (value) {
                                          context
                                              .read<HomeModel>()
                                              .setParameter(
                                                  i.parameter, value, i.type);
                                        },
                                        cursorColor: AppColors.black,
                                        inputFormatters:
                                            chooseInputFormatter(i.type),
                                        decoration: InputDecoration(
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors.black),
                                          ),
                                          labelStyle: const TextStyle(
                                              color: AppColors.black),
                                          labelText: i.name,
                                          helperText: Provider.of<HomeModel>(
                                                  context,
                                                  listen: false)
                                              .getParameterMetric(i.parameter),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColors.darkGray,
                                            ),
                                          ),
                                        ),
                                      ),
                                    'choose' => DropdownMenu(
                                        onSelected: (value) {
                                          context
                                              .read<HomeModel>()
                                              .setParameter(i.parameter,
                                                  value ?? 1, i.type);
                                        },
                                        dropdownMenuEntries:
                                            Provider.of<HomeModel>(context,
                                                    listen: false)
                                                .getDropDownEntries(
                                                    i.parameter)!
                                                .entries
                                                .map(
                                                  (e) => DropdownMenuEntry(
                                                      value: e.key,
                                                      label: e.value),
                                                )
                                                .toList(),
                                        label: Text(i.name),
                                        textStyle: const TextStyle(
                                          color: AppColors.black,
                                        ),
                                      ),
                                    'bool' => Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppColors.darkGray,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Checkbox(
                                              onChanged: (value) => setState(
                                                () => context
                                                    .read<HomeModel>()
                                                    .setParameter(
                                                        i.parameter,
                                                        (value!) ? 1 : 0,
                                                        i.type),
                                              ),
                                              value: Provider.of<HomeModel>(
                                                          context,
                                                          listen: false)
                                                      .getParameter(
                                                          i.parameter) ==
                                                  1,
                                            ),
                                            Text(i.name),
                                          ],
                                        ),
                                      ),
                                    _ => const SizedBox.shrink(),
                                  };
                                },
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )),
            ),
          Loading() => const Center(child: CircularProgressIndicator()),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}
