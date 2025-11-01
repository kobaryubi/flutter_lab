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
  static const webview = '/$webviewRelative';
  static const webviewRelative = 'webview';
  static const petstore = '/$petstoreRelative';
  static const petstoreRelative = 'petstore';

  // compass
  static const compass = '/$compassRelative';
  static const compassRelative = 'compass';
  static String compassBookingWithId(int id) =>
      '/$compassRelative/$bookingRelative/$id';
  static const bookingRelative = 'booking';

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
  static const cookbookNetworking = '/$cookbookRelative/$networkingRelative';
  static const networkingRelative = 'networking';
  static const cookbookNetworkingFetchData =
      '/$cookbookRelative/$networkingRelative/$fetchDataRelative';
  static const fetchDataRelative = 'fetch-data';

  // animations
  static const animations = '/$animationsRelative';
  static const animationsRelative = 'animations';

  // 404
  static const notFound = '/404';

  // fitness tracker
  static const fitnessTracker = '/$fitnessTrackerRelative';
  static const fitnessTrackerRelative = 'fitness-tracker';
  static const fitnessTrackerWorkoutList =
      '/$fitnessTrackerRelative/$workoutListRelative';
  static const workoutListRelative = 'workout-list';
  static const fitnessTrackerChat = '/$fitnessTrackerRelative/$chatRelative';
  static const chatRelative = 'chat';
  static const fitnessTrackerProfile =
      '/$fitnessTrackerRelative/$profileRelative';
  static const profileRelative = 'profile';

  // channel method
  static const location = '/$locationRelative';
  static const locationRelative = 'location';

  // routing
  static const routing = '/$routingRelative';
  static const routingRelative = 'routing';
}
