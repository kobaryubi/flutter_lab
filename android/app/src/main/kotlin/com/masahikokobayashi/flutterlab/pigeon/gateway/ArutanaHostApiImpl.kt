package com.masahikokobayashi.flutterlab.pigeon.gateway

import android.util.Log
import com.masahikokobayashi.flutterlab.pigeon.ArutanaHostApi

/// Stub implementation of [ArutanaHostApi] for Arutana ad SDK integration.
class ArutanaHostApiImpl : ArutanaHostApi {

    /// Initializes an interstitial ad via the Arutana SDK.
    override fun initializeInterstitialAd() {
        Log.d(TAG, "initializeInterstitialAd called")
    }

    /// Initializes a movie ad via the Arutana SDK.
    override fun initializeMovieAd() {
        Log.d(TAG, "initializeMovieAd called")
    }

    companion object {
        private const val TAG = "ArutanaHostApiImpl"
    }
}
