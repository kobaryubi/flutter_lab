/// The authentication and membership status of the current user.
enum MemberState {
  /// Not logged in.
  guest,

  /// Logged in as a provisional (temporary) member.
  provisional,

  /// Logged in as a regular (full) member.
  regular,
}
