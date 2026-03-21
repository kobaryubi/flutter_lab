import 'package:flutter_lab/data/gateway/adfurikun/sdk_adfurikun_gateway.dart';
import 'package:flutter_lab/domain/entity/exception/domain_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

/// Dummy app IDs for testing with SDK test mode enabled.
const _interstitialAppId = 'test-interstitial-app-id';
const _rewardAppId = 'test-reward-app-id';

void main() {
  late SdkAdfurikunGateway gateway;

  patrolSetUp(() {
    gateway = SdkAdfurikunGateway();
  });

  patrolTearDown(() {
    gateway.dispose();
  });

  group('SdkAdfurikunGateway interstitial ad', () {
    patrolTest(
      'initialize returns Success',
      ($) async {
        final result = await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    patrolTest(
      'initialize twice returns Success without error',
      ($) async {
        await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        final result = await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    patrolTest(
      'load without initialize returns Failure with notFound',
      ($) async {
        final result = await gateway.loadInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    patrolTest(
      'initialize and load returns Success',
      ($) async {
        await gateway.initializeInterstitialAd(
          appId: _interstitialAppId,
        );

        final result = await gateway.loadInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    patrolTest(
      'play without initialize returns Failure with notFound',
      ($) async {
        final result = await gateway.playInterstitialAd(
          appId: _interstitialAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    patrolTest(
      'play without load returns Failure with failedPrecondition',
      ($) async {
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

    patrolTest(
      'full flow: initialize, load, play returns Success',
      ($) async {
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

  group('SdkAdfurikunGateway reward ad', () {
    patrolTest(
      'initialize returns Success',
      ($) async {
        final result = await gateway.initializeRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    patrolTest(
      'load without initialize returns Failure with notFound',
      ($) async {
        final result = await gateway.loadRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    patrolTest(
      'initialize and load returns Success',
      ($) async {
        await gateway.initializeRewardAd(appId: _rewardAppId);

        final result = await gateway.loadRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isSuccess(), isTrue);
      },
    );

    patrolTest(
      'play without initialize returns Failure with notFound',
      ($) async {
        final result = await gateway.playRewardAd(
          appId: _rewardAppId,
        );

        expect(result.isError(), isTrue);

        result.onFailure((failure) {
          expect(failure, isA<NotFound>());
        });
      },
    );

    patrolTest(
      'play without load returns Failure with failedPrecondition',
      ($) async {
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

    patrolTest(
      'full flow: initialize, load, play returns Success',
      ($) async {
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

    patrolTest(
      'isRewarded returns false before any ad is played',
      ($) async {
        expect(
          gateway.isRewarded(appId: _rewardAppId),
          isFalse,
        );
      },
    );

    patrolTest(
      'isRewarded returns true after full flow in test mode',
      ($) async {
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

  group('SdkAdfurikunGateway dispose', () {
    patrolTest(
      'load after dispose returns Failure with notFound',
      ($) async {
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
