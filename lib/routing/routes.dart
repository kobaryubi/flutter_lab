abstract final class Routes {
  static const home = '/';
  static const login = '/login';
  static const search = '/$searchRelative';
  static const searchRelative = 'search';
  static const results = '/$resultsRelative';
  static const resultsRelative = 'results';
  static const activities = '/$activitiesRelative';
  static const activitiesRelative = 'activities';
  static const booking = '/$bookingRelative';
  static const bookingRelative = 'booking';
  static String bookingWithId(int id) => '$booking/$id';

  static const compass = '/$compassRelative';
  static const compassRelative = 'compass';

  static const optimisticState = '/$optimisticStateRelative';
  static const optimisticStateRelative = 'optimistic-state';

  // riverpod
  static const riverpod = '/$riverpodRelative';
  static const riverpodRelative = 'riverpod';
  static const riverpodCounter = '/$riverpodRelative/$counterRelative';
  static const counterRelative = 'counter';
  static const riverpodGettingStarted =
      '/$riverpodRelative/$gettingStartedRelative';
  static const gettingStartedRelative = 'getting-started';
  static const riverpodRandomJoke = '/$riverpodRelative/$randomJokeRelative';
  static const randomJokeRelative = 'random-joke';

  // cookbook
  static const cookbook = '/$cookbookRelative';
  static const cookbookRelative = 'cookbook';
}
