import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/core/domain/router/app_router.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:demoday_7/src/utils/themes/images.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  static const String path = '';
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 112),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    AppStrings.welcomeHeadline,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      FilledButton(
                        onPressed: () =>
                            context.router.push(const LoginRoute()),
                        style: activeSecondaryFilledButtonStyle,
                        child: const Text(AppStrings.logIn),
                      ),
                      const SizedBox(width: 20),
                      FilledButton(
                        onPressed: () =>
                            context.router.push(const SignupRoute()),
                        style: normalSecondaryFilledButtonStyle,
                        child: const Text(AppStrings.signUp),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 112),
            sliver: SliverToBoxAdapter(
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  _HomePageCardWidget(
                    headline: AppStrings.card1Headline,
                    chips: AppStrings.card1Chips,
                    imageSource: ImageSources.homeCard1,
                  ),
                  _HomePageCardWidget(
                    headline: AppStrings.card2Headline,
                    chips: AppStrings.card3Chips,
                    imageSource: ImageSources.homeCard2,
                  ),
                  _HomePageCardWidget(
                    headline: AppStrings.card3Headline,
                    chips: AppStrings.card3Chips,
                    imageSource: ImageSources.homeCard3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomePageCardWidget extends StatelessWidget {
  final String headline;
  final List<String> chips;
  final String imageSource;

  const _HomePageCardWidget({
    required this.headline,
    required this.chips,
    required this.imageSource,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Text(
                headline,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.asset(
                imageSource,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  chips.length,
                  (i) => Text(
                    chips[i],
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
