import 'dart:io';

import 'package:flutter_lab/data/gateway/adfurikun/sdk_adfurikun_gateway.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

/// Set to `false` to run these tests.
///
/// These tests require manually closing the ad overlay,
/// so they are skipped by default.
const _skipTest = true;

/// App IDs for testing with SDK test mode enabled.
final _interstitialAppId = Platform.isIOS
    ? 'ios-interstitial-app-id'
    : 'android-interstitial-app-id';
final _rewardAppId = Platform.isIOS
    ? 'ios-reward-app-id'
    : 'android-reward-app-id';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late SdkAdfurikunGateway gateway;

  setUp(() {
    gateway = SdkAdfurikunGateway();
  });

  tearDown(() {
    gateway.dispose();
  });

  group('SdkAdfurikunGateway interstitial ad', skip: _skipTest, () {
    testWidgets(
      'initialize returns Success',
      (tester) async {
        final result = await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    testWidgets(
      'initialize twice returns Success without error',
      (tester) async {
        await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        final result = await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    testWidgets(
      'load without initialize returns Failure with notFound',
      (tester) async {
        final result = await gateway.loadInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    testWidgets(
      'initialize and load returns Success',
      (tester) async {
        await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        final result = await gateway.loadInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    testWidgets(
      'play without initialize returns Failure with notFound',
      (tester) async {
        final result = await gateway.playInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    testWidgets(
      'play without load returns Failure with failedPrecondition',
      (tester) async {
        await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        final result = await gateway.playInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<FailedPrecondition>());
        });
      },
    );

    testWidgets(
      'full flow: initialize, load, play returns Success',
      (tester) async {
        final initResult = await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(initResult.isSuccess(), isTrue);

        final loadResult = await gateway.loadInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(loadResult.isSuccess(), isTrue);

        final playResult = await gateway.playInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(playResult.isSuccess(), isTrue);
      },
    );
  });

  group('SdkAdfurikunGateway reward ad', skip: _skipTest, () {
    testWidgets(
      'initialize returns Success',
      (tester) async {
        final result = await gateway.initializeRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    testWidgets(
      'load without initialize returns Failure with notFound',
      (tester) async {
        final result = await gateway.loadRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    testWidgets(
      'initialize and load returns Success',
      (tester) async {
        await gateway.initializeRewardAd(appId: _rewardAppId);

        final result = await gateway.loadRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    testWidgets(
      'play without initialize returns Failure with notFound',
      (tester) async {
        final result = await gateway.playRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    testWidgets(
      'play without load returns Failure with failedPrecondition',
      (tester) async {
        await gateway.initializeRewardAd(appId: _rewardAppId);

        final result = await gateway.playRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<FailedPrecondition>());
        });
      },
    );

    testWidgets(
      'full flow: initialize, load, play returns Success',
      (tester) async {
        final initResult = await gateway.initializeRewardAd(
          appId: _rewardAppId,
        );

        expect(initResult.isSuccess(), isTrue);

        final loadResult = await gateway.loadRewardAd(
          appId: _rewardAppId,
        );

        expect(loadResult.isSuccess(), isTrue);

        final playResult = await gateway.playRewardAd(
          appId: _rewardAppId,
        );

        expect(playResult.isSuccess(), isTrue);
      },
    );

    testWidgets(
      'isRewarded returns false before any ad is played',
      (tester) async {
        expect(
          gateway.isRewarded(appId: _rewardAppId),
          isFalse,
        );
      },
    );

    testWidgets(
      'isRewarded returns true after full flow in test mode',
      (tester) async {
        await gateway.initializeRewardAd(appId: _rewardAppId);

        await gateway.loadRewardAd(appId: _rewardAppId);

        await gateway.playRewardAd(appId: _rewardAppId);

        expect(
          gateway.isRewarded(appId: _rewardAppId),
          isTrue,
        );
      },
    );
  });

  group('SdkAdfurikunGateway dispose', skip: _skipTest, () {
    testWidgets(
      'load after dispose returns Failure with notFound',
      (tester) async {
        await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        gateway.dispose();

        final result = await gateway.loadInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );
  });
}
