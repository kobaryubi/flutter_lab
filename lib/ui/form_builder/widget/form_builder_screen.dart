import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/form_builder/hook/use_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

/// Screen that demonstrates `flutter_form_builder` with a custom hook.
class FormBuilderScreen extends StatelessWidget {
  const FormBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Form Builder')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final form = useFormBuilder();
    final nameController = useTextEditingController(text: 'Flutter');
    final emailController = useTextEditingController(
      text: 'flutter@example.com',
    );
    final nameFocusNode = useFocusNode();
    final emailFocusNode = useFocusNode();
    final submittedValues = useState<Map<String, dynamic>?>(null);
    final isNameCleared =
        form.formKey.currentState?.fields['clearName']?.value as bool? ?? false;

    /// Validates and submits the form, storing results in state.
    void handleSubmit() {
      final values = form.submit();
      submittedValues.value = values;
    }

    return FormBuilder(
      key: form.formKey,
      autovalidateMode: .onUserInteraction,
      onChanged: form.onChanged,
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: [
          Text(
            form.isValid ? 'Valid' : 'Not Valid',
          ),
          const Text('Name'),
          FormBuilderField<String>(
            name: 'name',
            initialValue: 'Flutter',
            enabled: !isNameCleared,
            validator: FormBuilderValidators.compose([
              if (!isNameCleared) FormBuilderValidators.required(),
            ]),
            builder: (field) => Column(
              crossAxisAlignment: .start,
              children: [
                EditableText(
                  controller: nameController,
                  focusNode: nameFocusNode,
                  readOnly: isNameCleared,
                  style: DefaultTextStyle.of(field.context).style,
                  cursorColor: const Color(0xFF000000),
                  backgroundCursorColor: const Color(0xFF808080),
                  onChanged: field.didChange,
                ),
                if (field.errorText case final errorText?) Text(errorText),
              ],
            ),
          ),
          const Text('Email'),
          FormBuilderField<String>(
            name: 'email',
            initialValue: 'flutter@example.com',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
            builder: (field) => Column(
              crossAxisAlignment: .start,
              children: [
                EditableText(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  style: DefaultTextStyle.of(field.context).style,
                  cursorColor: const Color(0xFF000000),
                  backgroundCursorColor: const Color(0xFF808080),
                  onChanged: field.didChange,
                ),
                if (field.errorText case final errorText?) Text(errorText),
              ],
            ),
          ),
          const Text('Clear Name'),
          FormBuilderField<bool>(
            name: 'clearName',
            initialValue: false,
            builder: (field) {
              /// Toggles the checkbox and clears the name field
              /// when checked on.
              void handleToggle() {
                final newValue = !(field.value ?? false);
                field.didChange(newValue);

                if (newValue) {
                  nameController.clear();
                  form.formKey.currentState?.fields['name']?.didChange('');
                }
              }

              return GestureDetector(
                onTap: handleToggle,
                child: Text(
                  (field.value ?? false) ? '[x]' : '[ ]',
                ),
              );
            },
          ),
          GestureDetector(
            onTap: form.isValid ? handleSubmit : null,
            child: Text(
              'Submit',
              style: TextStyle(
                color: form.isValid
                    ? const Color(0xFF000000)
                    : const Color(0xFF808080),
              ),
            ),
          ),
          if (submittedValues.value case final values?)
            Text('Submitted: $values'),
        ],
      ),
    );
  }
}
