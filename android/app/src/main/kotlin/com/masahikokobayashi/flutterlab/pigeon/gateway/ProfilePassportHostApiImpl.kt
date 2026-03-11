package com.masahikokobayashi.flutterlab.pigeon.gateway

// import android.content.Context
// import android.util.Log
// import com.masahikokobayashi.flutterlab.pigeon.ProfilePassportHostApi
// import jp.co.ymds.profilepassport.sdk.PPSDKManager
//
// /// Implementation of [ProfilePassportHostApi] for ProfilePassport SDK integration.
// class ProfilePassportHostApiImpl(
//     private val context: Context
// ) : ProfilePassportHostApi {
//
//     /// Starts the PPSDK service with default start options.
//     override fun startService(callback: (Result<Unit>) -> Unit) {
//         val startOption: HashMap<String, String> = HashMap()
//         startOption["isRequestLocationPermit"] = "false"
//         startOption["isRequestBackgroundLocationPermit"] = "false"
//         startOption["isRequestBluetoothPermit"] = "false"
//         startOption["isRequestPushPermit"] = "false"
//         startOption["isRequestPushPermit"] = "false"
//
//         PPSDKManager.sharedManager(context.applicationContext)
//             .serviceStart(context, startOption) { code, message ->
//                 Log.d(TAG, "PPSDK service start result code:$code, message:$message")
//                 callback(Result.success(Unit))
//             }
//     }
//
//     companion object {
//         private const val TAG = "ProfilePassportHostApiImpl"
//     }
// }
