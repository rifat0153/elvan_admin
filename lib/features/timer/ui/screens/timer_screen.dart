import 'package:auto_route/annotations.dart';
import 'package:elvan_admin/features/timer/ui/notifier/setting_notifier.dart';
import 'package:elvan_admin/shared/components/buttons/eIconBtn.dart';
import 'package:elvan_admin/shared/components/responsive/responsive_layout.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:elvan_admin/features/tabs/ui/notifier/menu_notifier.dart';
import 'package:elvan_admin/shared/components/appbars/home_app_bar.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TimerScreen extends HookConsumerWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuNotifier = ref.watch(menuProvider.notifier);
    final defaulState = ref.watch(defaultTimerProvider);
    final defaulNotifier = ref.watch(defaultTimerProvider.notifier);
    final minutes = useState<int>(30);

    useEffect(() {
      minutes.value = defaulState.minutes;
      return null;
    }, const []);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          HomeAppBar(
              onClick: () {
                Scaffold.of(context).openDrawer();
                menuNotifier.open();
              },
              title: AppStrings.time),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        AppStrings.orderHours,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const Spacer(),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 20),
                    //   child: ElvanBtn(
                    //     title: AppStrings.save,
                    //     onClick: () {},
                    //     color: AppColors.primaryRed,
                    //   ),
                    // )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 20, right: ResponsiveLayout.isDesktop(context) ? 0 : 20),
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveLayout.isDesktop(context) ? AppSize.width(context) / 3.0 : AppSize.width(context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          AppStrings.takingOrder,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.gray),
                        ),
                      ),
                      Switch(
                          value: defaulState.takingHour,
                          onChanged: ((value) {
                            defaulNotifier.setTakingHour(value);
                          }))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    AppStrings.setDeliveryTime,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, top: 20, right: ResponsiveLayout.isDesktop(context) ? 0 : 20),
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveLayout.isDesktop(context) ? AppSize.width(context) / 2.9 : AppSize.width(context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          AppStrings.setestimatedTime,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.gray),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: EIconBtn(
                              onClick: () {
                                if (minutes.value > 0) {
                                  minutes.value--;

                                  defaulNotifier.setMin(minutes.value);
                                }
                              },
                              iconData: Icons.do_not_disturb_on,
                            ),
                          ),
                          Container(
                            width: 77,
                            height: 70,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grayA7, width: 2),
                              borderRadius: BorderRadius.circular(AppSize.radiusSL),
                            ),
                            child: Center(
                              child: Text(
                                "${defaulState.minutes} min",
                                style: Theme.of(context).textTheme.labelLarge,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: EIconBtn(
                              onClick: () {
                                if (minutes.value >= 0) {
                                  minutes.value++;
                                  defaulNotifier.setMin(minutes.value);
                                }
                              },
                              iconData: Icons.add_circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
