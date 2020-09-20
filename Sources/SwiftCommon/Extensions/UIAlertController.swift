//
//  UIAlertController.swift
//  AppStoreReviews
//
//  Created by Erkan Ugurlu on 9.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

import UIKit

public extension UIAlertController {
    
    //https://stackoverflow.com/questions/55653187/swift-default-alertviewcontroller-breaking-constraints
    //A weird fix for weird platform bug that causes a constraint warning.
    func pruneNegativeWidthConstraints() {
        for subView in self.view.subviews {
            for constraint in subView.constraints where constraint.debugDescription.contains("width == - 16") {
                subView.removeConstraint(constraint)
            }
        }
    }
}
