import 'package:freezed_annotation/freezed_annotation.dart';

part 'deep_link_state.freezed.dart';

/// Reception state of a deep link for the current resume.
///
/// The key design point is that the transition to [Validating] happens
/// synchronously in the link stream listener (before any `await`), so the
/// resume-time initializer can always tell "a link arrived" apart from
/// "no link" without racing against asynchronous validation.
@freezed
sealed class DeepLinkState with _$DeepLinkState {
  /// No link has arrived for this resume.
  const factory DeepLinkState.noLink() = NoLink;

  /// A link arrived and asynchronous validation is in flight.
  ///
  /// [Validating.result] completes with the validated link, or `null` when
  /// the link turned out to be invalid.
  const factory DeepLinkState.validating({required Future<Uri?> result}) =
      Validating;

  /// Validation finished successfully before the link was consumed.
  const factory DeepLinkState.ready({required Uri link}) = Ready;
}
