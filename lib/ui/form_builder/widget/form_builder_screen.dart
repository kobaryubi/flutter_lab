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
    final isNameCleared = useState(false);

    /// Clears the name controller and syncs the form field value
    /// when the checkbox is checked on.
    useEffect(() {
      if (isNameCleared.value) {
        nameController.clear();
        form.formKey.currentState?.fields['name']?.didChange('');
      }

      return null;
    }, [isNameCleared.value]);

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
            enabled: !isNameCleared.value,
            validator: FormBuilderValidators.compose([
              if (!isNameCleared.value) FormBuilderValidators.required(),
            ]),
            builder: (field) => Column(
              crossAxisAlignment: .start,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: field.hasError
                        ? Border.all(color: const Color(0xFFFF0000))
                        : null,
                  ),
                  child: EditableText(
                    controller: nameController,
                    focusNode: nameFocusNode,
                    readOnly: isNameCleared.value,
                    style: DefaultTextStyle.of(field.context).style,
                    cursorColor: const Color(0xFF000000),
                    backgroundCursorColor: const Color(0xFF808080),
                    onChanged: field.didChange,
                  ),
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
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: field.hasError
                        ? Border.all(color: const Color(0xFFFF0000))
                        : null,
                  ),
                  child: EditableText(
                    controller: emailController,
                    focusNode: emailFocusNode,
                    style: DefaultTextStyle.of(field.context).style,
                    cursorColor: const Color(0xFF000000),
                    backgroundCursorColor: const Color(0xFF808080),
                    onChanged: field.didChange,
                  ),
                ),
                if (field.errorText case final errorText?) Text(errorText),
              ],
            ),
          ),
          const Text('Clear Name'),
          GestureDetector(
            onTap: () {
              /// Toggles the checkbox and clears the name field
              /// when checked on.
              isNameCleared.value = !isNameCleared.value;
            },
            child: Text(
              isNameCleared.value ? '[x]' : '[ ]',
            ),
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
