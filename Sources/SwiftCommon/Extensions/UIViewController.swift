//
//  UIViewController.swift
//  AppStoreReviews
//
//  Created by Erkan Ugurlu on 9.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    func showPopup(title: String, message: String) {
        let popup = UIAlertController(title: title, message: message, preferredStyle: .alert)
        popup.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(popup, animated: true, completion: nil)
    }
}
