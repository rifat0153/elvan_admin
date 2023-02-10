import 'package:elvan_shared/dtos/category/build_step/build_step.dart';
import 'package:flutter/material.dart';

class BuildStepItem extends StatelessWidget {
  final BuildStep buildsteps;
  const BuildStepItem({super.key, required this.buildsteps});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10,top: 10),
          child: Text(
            buildsteps.title,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        buildsteps.addOns.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemCount: buildsteps.addOns.length,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      "${index + 1}. ${buildsteps.addOns[index].title}",
                      style: Theme.of(context).textTheme.labelSmall,
                      overflow: TextOverflow.ellipsis,
                    );
                  },
                ),
              )
            : Container(),
      ],
    );
  }
}
