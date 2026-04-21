package com.masahikokobayashi.flutterlab

import android.app.Activity
import android.content.Intent
import android.os.Bundle

/// Forwards incoming deep-link intents to [MainActivity].
///
/// Used with the Adjust "Dedicated Deep Link Activity" approach so that
/// the deep-link URI is delivered to the already-running [MainActivity]
/// via `onNewIntent`, which the Adjust SDK reads for attribution.
class DedicatedDeepLinkActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        forwardIntent(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        forwardIntent(intent)
    }

    /// Re-dispatches the deep-link [source] intent to [MainActivity] and finishes.
    private fun forwardIntent(source: Intent) {
        val forwarded = Intent(this, MainActivity::class.java).apply {
            data = source.data
            putExtras(source)
            addFlags(
                Intent.FLAG_ACTIVITY_NEW_TASK or
                    Intent.FLAG_ACTIVITY_CLEAR_TOP or
                    Intent.FLAG_ACTIVITY_SINGLE_TOP,
            )
        }
        startActivity(forwarded)
        finish()
    }
}
