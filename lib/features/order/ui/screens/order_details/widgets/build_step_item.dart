import 'package:collection/collection.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_shared/dtos/category/build_step/build_step.dart';
import 'package:flutter/material.dart';

class BuildStepItem extends StatelessWidget {
  final BuildStep buildsteps;
  final int index;
  const BuildStepItem({super.key, required this.buildsteps, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "$index. ${buildsteps.title}",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        checkAddons(buildStep: buildsteps)
            ? Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "${AppStrings.addons} :",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              )
            : Container(),
        buildsteps.addOns.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemCount: buildsteps.addOns.length,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    if (buildsteps.addOns[index].isSelected) {
                      return Text(
                        "* ${buildsteps.addOns[index].title}",
                        style: Theme.of(context).textTheme.labelSmall,
                        overflow: TextOverflow.ellipsis,
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              )
            : Container(),
      ],
    );
  }

  bool checkAddons({
    required BuildStep buildStep,
  }) {
    final addons = buildStep.addOns.whereIndexed((index, element) => element.isSelected == true);
    return addons.isNotEmpty;
  }
}
