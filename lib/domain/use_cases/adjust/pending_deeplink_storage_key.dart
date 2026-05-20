/// Key under which a pending Adjust deep link (deferred or direct) is
/// stored in the shared in-memory storage gateway.
///
/// Deferred and direct links share a single slot — whichever arrives most
/// recently wins, and the consumer reads it once before the value is
/// cleared.
const String pendingDeeplinkStorageKey = 'pending_deeplink';
