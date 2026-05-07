//
//  NotificationService.swift
//  NotificationService
//
//  Created by Masahiko Kobayashi on 2026/05/06.
//

import FirebaseMessaging
import UserNotifications
import os

class NotificationService: UNNotificationServiceExtension {

    private let logger = Logger(
        subsystem: Bundle.main.bundleIdentifier ?? "NotificationService",
        category: "NotificationService"
    )

    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        self.contentHandler = contentHandler
        bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent)

        logger.info("Received notification request with identifier: \(request.identifier, privacy: .public)")

        if let bestAttemptContent = bestAttemptContent {
            logger.debug("bestAttemptContent.title: \(bestAttemptContent.title, privacy: .public)")
            logger.debug("bestAttemptContent.body: \(bestAttemptContent.body, privacy: .public)")
            logger.debug("bestAttemptContent.userInfo: \(bestAttemptContent.userInfo, privacy: .public)")

            let loggingContentHandler: (UNNotificationContent) -> Void = { [logger] content in
                logger.info("contentHandler invoked. Content: \(String(describing: content), privacy: .public)")
                contentHandler(content)
            }

            logger.debug("Populating notification content via FIRMessaging service extension")
            Messaging.serviceExtension().populateNotificationContent(bestAttemptContent, withContentHandler: loggingContentHandler)
        } else {
            logger.error("Failed to create mutable notification content")
        }
    }
    
    override func serviceExtensionTimeWillExpire() {
        // Called just before the extension will be terminated by the system.
        // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
        logger.warning("Service extension time will expire, delivering best attempt content")
        
        if let contentHandler = contentHandler, let bestAttemptContent =  bestAttemptContent {
            contentHandler(bestAttemptContent)
        }
    }

}
