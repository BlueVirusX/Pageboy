//
//  Pageboy+NavigationNotifications.swift
//  Example iOS
//
//  Created by Merrick Sapsford on 11/10/2020.
//  Copyright © 2020 UI At Six. All rights reserved.
//

import UIKit
import Pageboy

extension Notification.Name {
    
    static let nextPage = Notification.Name("com.uias.Pageboy.nextPage")
    static let previousPage = Notification.Name("com.uias.Pageboy.previousPage")
}

extension PageboyViewController {
    
    func registerForNavigationNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(nextPage(_:)), name: .nextPage, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(previousPage(_:)), name: .previousPage, object: nil)
    }
    
    @objc(nextPageWithNotification:)
    private func nextPage(_ notification: Notification) {
        scrollToPage(.next, animated: true)
    }
    
    @objc(previousPageWithNotification:)
    private func previousPage(_ notification: Notification) {
        scrollToPage(.previous, animated: true)
    }
}
