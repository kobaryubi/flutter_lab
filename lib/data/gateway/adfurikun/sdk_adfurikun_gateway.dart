// import 'dart:async';
//
// import 'package:adfurikunsdk/adfurikun.dart';
// import 'package:adfurikunsdk/interstitial.dart';
// import 'package:adfurikunsdk/reward.dart';
// import 'package:flutter_lab/domain/adfurikun/adfurikun_gateway.dart';
// import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
// import 'package:result_dart/result_dart.dart';
//
// /// Adfurikun SDK implementation of [AdfurikunGateway].
// class SdkAdfurikunGateway implements AdfurikunGateway {
//   /// Creates a gateway with test mode and debug mode enabled.
//   SdkAdfurikunGateway() {
//     AdfurikunSdk.setTestMode(true);
//     AdfurikunSdk.setDebugMode(true);
//   }
//
//   final Map<String, AdfurikunInterstitial> _interstitialAds = {};
//   final Map<String, AdfurikunReward> _rewardAds = {};
//   final Map<String, Completer<Unit>> _interstitialLoadCompleters = {};
//   final Map<String, Completer<Unit>> _interstitialPlayCompleters = {};
//   final Map<String, Completer<Unit>> _rewardLoadCompleters = {};
//   final Map<String, Completer<Unit>> _rewardPlayCompleters = {};
//   final Map<String, bool> _rewardedMap = {};
//
//   @override
//   AsyncResult<Unit> initializeInterstitialAd({required String appId}) async {
//     if (_isInterstitialAdPlaying(appId)) {
//       return const Failure(DomainException.failedPrecondition());
//     }
//
//     final existingAd = _interstitialAds[appId];
//
//     if (existingAd != null && await existingAd.isPrepared()) {
//       return const Success(unit);
//     }
//
//     try {
//       existingAd
//         ?..destroy()
//         ..listener = null;
//
//       final interstitial = AdfurikunInterstitial(appId)
//         ..listener = _createInterstitialListener();
//
//       _interstitialAds[appId] = interstitial;
//
//       return const Success(unit);
//     } on Exception {
//       return const Failure(DomainException.internal());
//     }
//   }
//
//   @override
//   AsyncResult<Unit> loadInterstitialAd({required String appId}) async {
//     try {
//       final interstitial = _interstitialAds[appId];
//
//       if (interstitial == null) {
//         return const Failure(DomainException.notFound());
//       }
//
//       if (await interstitial.isPrepared()) {
//         return const Success(unit);
//       }
//
//       final completer = Completer<Unit>();
//
//       _interstitialLoadCompleters[appId] = completer;
//       interstitial.loadWithTimeout(10);
//
//       await completer.future;
//
//       return const Success(unit);
//     } on Exception {
//       return const Failure(DomainException.internal());
//     }
//   }
//
//   @override
//   AsyncResult<Unit> playInterstitialAd({required String appId}) async {
//     final existingInterstitialCompleter = _interstitialPlayCompleters[appId];
//
//     if (existingInterstitialCompleter != null &&
//         !existingInterstitialCompleter.isCompleted) {
//       try {
//         await existingInterstitialCompleter.future;
//
//         return const Success(unit);
//       } on Exception catch (exception) {
//         return Failure(exception);
//       }
//     }
//
//     if (_isAnyAdPlaying()) {
//       return const Failure(DomainException.failedPrecondition());
//     }
//
//     try {
//       final interstitial = _interstitialAds[appId];
//
//       if (interstitial == null) {
//         return const Failure(DomainException.notFound());
//       }
//
//       final isPrepared = await interstitial.isPrepared();
//
//       if (!isPrepared) {
//         return const Failure(DomainException.failedPrecondition());
//       }
//
//       final completer = Completer<Unit>();
//
//       _interstitialPlayCompleters[appId] = completer;
//       interstitial.play();
//
//       await completer.future;
//
//       return const Success(unit);
//     } on Exception {
//       return const Failure(DomainException.internal());
//     }
//   }
//
//   @override
//   AsyncResult<Unit> initializeRewardAd({required String appId}) async {
//     if (_isRewardAdPlaying(appId)) {
//       return const Failure(DomainException.failedPrecondition());
//     }
//
//     final existingAd = _rewardAds[appId];
//
//     if (existingAd != null && await existingAd.isPrepared()) {
//       return const Success(unit);
//     }
//
//     try {
//       existingAd
//         ?..destroy()
//         ..listener = null;
//
//       final reward = AdfurikunReward(appId)..listener = _createRewardListener();
//
//       _rewardAds[appId] = reward;
//
//       return const Success(unit);
//     } on Exception {
//       return const Failure(DomainException.internal());
//     }
//   }
//
//   @override
//   AsyncResult<Unit> loadRewardAd({required String appId}) async {
//     try {
//       final reward = _rewardAds[appId];
//
//       if (reward == null) {
//         return const Failure(DomainException.notFound());
//       }
//
//       if (await reward.isPrepared()) {
//         return const Success(unit);
//       }
//
//       final completer = Completer<Unit>();
//
//       _rewardLoadCompleters[appId] = completer;
//       reward.loadWithTimeout(10);
//
//       await completer.future;
//
//       return const Success(unit);
//     } on Exception {
//       return const Failure(DomainException.internal());
//     }
//   }
//
//   @override
//   AsyncResult<Unit> playRewardAd({required String appId}) async {
//     final existingRewardCompleter = _rewardPlayCompleters[appId];
//
//     if (existingRewardCompleter != null &&
//         !existingRewardCompleter.isCompleted) {
//       try {
//         await existingRewardCompleter.future;
//
//         return const Success(unit);
//       } on Exception catch (exception) {
//         return Failure(exception);
//       }
//     }
//
//     if (_isAnyAdPlaying()) {
//       return const Failure(DomainException.failedPrecondition());
//     }
//
//     try {
//       final reward = _rewardAds[appId];
//
//       if (reward == null) {
//         return const Failure(DomainException.notFound());
//       }
//
//       final isPrepared = await reward.isPrepared();
//
//       if (!isPrepared) {
//         return const Failure(DomainException.failedPrecondition());
//       }
//
//       final completer = Completer<Unit>();
//
//       _rewardPlayCompleters[appId] = completer;
//       reward.play();
//
//       await completer.future;
//
//       return const Success(unit);
//     } on Exception {
//       return const Failure(DomainException.internal());
//     }
//   }
//
//   @override
//   bool isRewarded({required String appId}) => _rewardedMap[appId] ?? false;
//
//   @override
//   void dispose() {
//     for (final interstitial in _interstitialAds.values) {
//       interstitial
//         ..destroy()
//         ..listener = null;
//     }
//
//     for (final reward in _rewardAds.values) {
//       reward
//         ..destroy()
//         ..listener = null;
//     }
//
//     _interstitialAds.clear();
//     _rewardAds.clear();
//     _interstitialLoadCompleters.clear();
//     _interstitialPlayCompleters.clear();
//     _rewardLoadCompleters.clear();
//     _rewardPlayCompleters.clear();
//     _rewardedMap.clear();
//   }
//
//   /// Whether any ad is currently playing.
//   bool _isAnyAdPlaying() =>
//       _interstitialPlayCompleters.values.any(
//         (completer) => !completer.isCompleted,
//       ) ||
//       _rewardPlayCompleters.values.any((completer) => !completer.isCompleted);
//
//   /// Whether an interstitial ad with the given app ID is currently playing.
//   bool _isInterstitialAdPlaying(String appId) {
//     final completer = _interstitialPlayCompleters[appId];
//
//     return completer != null && !completer.isCompleted;
//   }
//
//   /// Whether a reward ad with the given app ID is currently playing.
//   bool _isRewardAdPlaying(String appId) {
//     final completer = _rewardPlayCompleters[appId];
//
//     return completer != null && !completer.isCompleted;
//   }
//
//   /// Creates a listener for interstitial ad callbacks.
//   AdfurikunInterstitialListener _createInterstitialListener() =>
//       (
//         callback,
//         appId,
//         adNetworkKey,
//         errorCode,
//         errorMessage,
//         adNetworkErrorList,
//       ) {
//         if (appId == null) {
//           return;
//         }
//
//         switch (callback) {
//           case .onPrepareSuccess:
//             _interstitialLoadCompleters.remove(appId)?.complete(unit);
//
//           case .onPrepareFailure:
//             _interstitialAds.remove(appId)
//               ?..destroy()
//               ..listener = null;
//             _interstitialLoadCompleters
//                 .remove(appId)
//                 ?.completeError(const DomainException.unavailable());
//
//           case .onStartPlaying:
//           case .onFinishedPlaying:
//             break;
//
//           case .onAdClose:
//             _interstitialPlayCompleters.remove(appId)?.complete(unit);
//
//           case .onFailedPlaying:
//             _interstitialPlayCompleters
//                 .remove(appId)
//                 ?.completeError(const DomainException.internal());
//
//           case null:
//             break;
//         }
//       };
//
//   /// Creates a listener for reward ad callbacks.
//   AdfurikunRewardListener _createRewardListener() =>
//       (
//         callback,
//         appId,
//         adNetworkKey,
//         errorCode,
//         errorMessage,
//         adNetworkErrorList,
//         isRewarded,
//       ) {
//         if (appId == null) {
//           return;
//         }
//
//         switch (callback) {
//           case .onPrepareSuccess:
//             _rewardLoadCompleters.remove(appId)?.complete(unit);
//
//           case .onPrepareFailure:
//             _rewardAds.remove(appId)
//               ?..destroy()
//               ..listener = null;
//             _rewardLoadCompleters
//                 .remove(appId)
//                 ?.completeError(const DomainException.unavailable());
//
//           case .onStartPlaying:
//             _rewardedMap[appId] = false;
//
//           case .onFinishedPlaying:
//             break;
//
//           case .onAdClose:
//             _rewardedMap[appId] = isRewarded ?? false;
//             _rewardPlayCompleters.remove(appId)?.complete(unit);
//
//           case .onFailedPlaying:
//             _rewardPlayCompleters
//                 .remove(appId)
//                 ?.completeError(const DomainException.internal());
//
//           case null:
//             break;
//         }
//       };
// }
