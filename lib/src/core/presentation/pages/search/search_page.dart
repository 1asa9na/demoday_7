import 'package:auto_route/annotations.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  static const String path = 'search';

  const SearchPage({super.key});
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<DropdownItem<String>> filters = List.generate(
    AppStrings.searchFilters.length,
    (index) => DropdownItem(
      label: AppStrings.searchFilters[index],
      value: AppStrings.searchFilters[index],
    ),
  );
  final controller = MultiSelectController<String>();

  bool option1 = true;
  bool option2 = true;
  bool option3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 112),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              AppStrings.searchHeadline,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 320,
                    child: CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.only(bottom: 20, right: 20),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              AppStrings.searchSelectFilters,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.only(bottom: 20, right: 20),
                          sliver: SliverToBoxAdapter(
                            child: MultiDropdown(
                              onSelectionChange: (selectedItems) =>
                                  setState(() {}),
                              items: filters,
                              controller: controller,
                              enabled: true,
                              searchEnabled: true,
                              chipDecoration: ChipDecoration(
                                backgroundColor: AppColors.darkGray,
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: AppColors.white),
                                wrap: true,
                                runSpacing: 2,
                                spacing: 10,
                              ),
                              fieldDecoration: FieldDecoration(
                                hintText: AppStrings.searchFiltersFieldHint,
                                showClearIcon: false,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              dropdownDecoration: const DropdownDecoration(
                                marginTop: 2,
                                maxHeight: 500,
                                header: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    'Select countries from the list',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              dropdownItemDecoration: DropdownItemDecoration(
                                selectedIcon: const Icon(Icons.check_box,
                                    color: Colors.green),
                                disabledIcon: Icon(Icons.lock,
                                    color: Colors.grey.shade300),
                              ),
                            ),
                          ),
                        ),
                        if (controller.selectedItems.isNotEmpty) ...[
                          SliverPadding(
                            padding:
                                const EdgeInsets.only(bottom: 20, right: 20),
                            sliver: SliverToBoxAdapter(
                              child: Text(
                                AppStrings.searchInputData,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                          ),
                          ...List.generate(
                            controller.selectedItems.length,
                            (index) => SliverPadding(
                              padding:
                                  const EdgeInsets.only(bottom: 20, right: 20),
                              sliver: SliverToBoxAdapter(
                                child: TextField(
                                  cursorColor: AppColors.black,
                                  decoration: InputDecoration(
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.black),
                                    ),
                                    labelStyle:
                                        const TextStyle(color: AppColors.black),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.darkGray,
                                      ),
                                    ),
                                    labelText:
                                        controller.selectedItems[index].label,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            AppStrings.searchSelectActions,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                onChanged: (value) => setState(
                                    () => option1 = value! ? true : false),
                                value: option1,
                              ),
                              Expanded(
                                child: Text(
                                  AppStrings.searchOption1,
                                  style: Theme.of(context).textTheme.labelLarge,
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                onChanged: (value) => setState(
                                    () => option2 = value! ? true : false),
                                value: option2,
                              ),
                              Expanded(
                                child: Text(
                                  AppStrings.searchOption2,
                                  style: Theme.of(context).textTheme.labelLarge,
                                  maxLines: 5,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                onChanged: (value) => setState(
                                    () => option3 = value! ? true : false),
                                value: option3,
                              ),
                              Expanded(
                                child: Text(
                                  AppStrings.searchOption3,
                                  style: Theme.of(context).textTheme.labelLarge,
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: FilledButton(
                            onPressed: () {},
                            style: activeSecondaryFilledButtonStyle,
                            child: const Text(AppStrings.searchButtonLabel),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
