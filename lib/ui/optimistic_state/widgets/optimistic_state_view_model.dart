import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/repositories/subscription/subscription_repository.dart';
import 'package:flutter_lab/utils/command.dart';
import 'package:flutter_lab/utils/result.dart';
import 'package:logging/logging.dart';

class OptimisticStateViewModel extends ChangeNotifier {
  OptimisticStateViewModel({
    required SubscriptionRepository subscriptionRepository,
  }) : _subscriptionRepository = subscriptionRepository {
    subscribe = Command0(_subscribe);
  }

  final SubscriptionRepository _subscriptionRepository;

  final _log = Logger('OptimisticStateViewModel');
  bool _subscribed = false;
  bool get subscribed => _subscribed;

  late final Command0<void> subscribe;

  Future<Result<void>> _subscribe() async {
    if (_subscribed) {
      _log.warning('Already subscribed');
      return Result.error(Exception('Already subscribed'));
    }

    _subscribed = true;
    notifyListeners();

    try {
      final resultSubscribe = await _subscriptionRepository.subscribe();
      switch (resultSubscribe) {
        case Ok<void>():
          _log.fine('Subscribed successfully');
        case Error<void>():
          _subscribed = false;
          _log.warning('Failed to subscribe', resultSubscribe.error);
      }

      return resultSubscribe;
    } finally {
      notifyListeners();
    }
  }
}
