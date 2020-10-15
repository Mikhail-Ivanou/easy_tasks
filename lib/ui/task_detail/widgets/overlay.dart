import 'package:flutter/material.dart';

class SavingInProgressOverlay extends StatelessWidget {

  final bool isSaving;

  const SavingInProgressOverlay({Key key, @required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: isSaving ? Colors.black.withOpacity(0.7) : Colors.transparent,
        child: Visibility(
          visible: isSaving,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: CircularProgressIndicator()),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Saving...',
                textAlign: TextAlign.center,
                //TODO fix theme / color scheme
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
