import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// State returned by [useFormBuilder].
class UseFormBuilderState {
  /// Creates a [UseFormBuilderState].
  const UseFormBuilderState({
    required this.formKey,
    required this.isValid,
    required this.onChanged,
    required this.submit,
  });

  /// The [GlobalKey] for the [FormBuilder] widget.
  final GlobalKey<FormBuilderState> formKey;

  /// Whether the form is currently valid.
  final bool isValid;

  /// Callback to pass to [FormBuilder.onChanged] to track validity.
  final VoidCallback onChanged;

  /// Validates and saves the form, returning field values if valid.
  ///
  /// Returns `null` when validation fails.
  final Map<String, dynamic>? Function() submit;
}

/// Hook that provides a stable [GlobalKey] for [FormBuilder] and a
/// submit function that validates, saves, and returns form values.
UseFormBuilderState useFormBuilder() {
  final formKey = useMemoized(GlobalKey<FormBuilderState>.new);
  final isValid = useState(true);

  void onChanged() {
    isValid.value = formKey.currentState?.isValid ?? false;
  }

  Map<String, dynamic>? submit() {
    final valid = formKey.currentState?.saveAndValidate() ?? false;
    return valid ? formKey.currentState?.value : null;
  }

  return UseFormBuilderState(
    formKey: formKey,
    isValid: isValid.value,
    onChanged: onChanged,
    submit: submit,
  );
}
