//
//  NotificationService.swift
//  NotificationService
//
//  Created by Masahiko Kobayashi on 2026/05/06.
//

import UserNotifications
import os

class NotificationService: UNNotificationServiceExtension {

    private let logger = Logger()
    
    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        self.contentHandler = contentHandler
        bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent)
        
        logger.info("Received notification request with identifier: \(request.identifier)")
        
        if let bestAttemptContent = bestAttemptContent {
            // Modify the notification content here...
            logger.debug("Modifying notification content. Original title: \(bestAttemptContent.title)")
            bestAttemptContent.title = "\(bestAttemptContent.title) [modified]"
            
            logger.info("Successfully modified notification content")
            contentHandler(bestAttemptContent)
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
