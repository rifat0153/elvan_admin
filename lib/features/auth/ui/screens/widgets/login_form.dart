import 'package:elvan_admin/features/auth/ui/notifer/auth_notifer.dart';
import 'package:elvan_admin/features/auth/ui/states/auth_event.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_strings.dart';
import 'package:elvan_admin/shared/constants/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginForm extends HookConsumerWidget {
  LoginForm({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final authState = ref.watch(authNotifierProvider);

    final emailTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();

    final isObscure = useState<bool>(true);

    useEffect(() {
      return (() {
        _formKey.currentState?.dispose();
      });
    }, const []);
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              style: Theme.of(context).textTheme.titleSmall,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: AppStrings.emailHint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryRed, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              controller: emailTextController,
              validator: (value) {
                RegExp regExp = RegExp(AppUtils.emailpattern2);

                if (value == null || value.isEmpty) {
                  return AppStrings.emailEmpty;
                } else if (!regExp.hasMatch(value)) {
                  return AppStrings.emailNotMatch;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              style: Theme.of(context).textTheme.titleSmall,
              controller: passwordTextController,
              obscureText: isObscure.value,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_open),
                suffixIcon: IconButton(
                  icon: Icon(
                    isObscure.value ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    isObscure.value = !isObscure.value;
                  },
                ),
                hintText: AppStrings.passwordHint,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryRed, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppStrings.passwordEmpty;
                } else if (value.length < 5) {
                  return AppStrings.password6Characters;
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.primaryRed),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  onPressed: authState.loading
                      ? () {}
                      : () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            print("-------------click");
                            authNotifier.onEvent(AuthEvent.loginWithPasswordAndEmail(email: emailTextController.text, password: passwordTextController.text));
                            // authNotifier.register(emailTextController.text,
                            //     passwordTextController.text);
                          }
                        },
                  child: authState.loading
                      ? const Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(color: AppColors.white),
                          ),
                        )
                      : Text(
                          AppStrings.login,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.white),
                        ),
                ),
              ),
            )
          ],
        ));
  }
}
